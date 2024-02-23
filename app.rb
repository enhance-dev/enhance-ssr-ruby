# app.rb
require 'sinatra'
require "extism"
require 'json'

path = "./enhance-ssr.wasm"
manifest = Extism::Manifest.from_path path
plugin = Extism::Plugin.new(manifest, wasi:true)

def read_elements(directory)
  elements = {}
  Dir.foreach(directory) do |filename|
    next if filename == '.' || filename == '..' # Skip current and parent directory entries
    file_path = File.join(directory, filename)
    if File.file?(file_path)
      key = File.basename(filename, ".*")
      elements[key] = File.read(file_path)
    end
  end
  elements
end

element_path = './elements'
elements = read_elements(element_path)
markup = "<my-header>Hello World</my-header>"
initial_state = {}
data = { "markup" => markup, "elements" => elements, "initialState" => initial_state }

payload = JSON.pretty_generate(data)

html_document = JSON.parse(plugin.call("ssr", payload))["document"]

get '/' do
  html_document
end




