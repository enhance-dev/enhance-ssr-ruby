# Enhance SSR Ruby Example
This project demonstrates using Enhance to serverside render components in Ruby. It uses Sinatra as a minimal framework but this technique can be used with Ruby on Rails or almost any other framework.

## Install Extism Runtime Dependency
For this library, you first need to install the Extism Runtime by following the instructions in the [Ruby SDK Repository](https://github.com/extism/ruby-sdk#install-the-extism-runtime-dependency).

## Download Enhance SSR wasm
Download the latest release of the compiled wasm:
```sh
curl -L https://github.com/enhance-dev/enhance-ssr-wasm/releases/download/v0.0.3/enhance-ssr.wasm.gz | gunzip > enhance-ssr.wasm
```

## Run
1. Install Dependencies
```sh
bundle install
```
2. Run Server
```sh
ruby app.rb
```
3. load http://localhost:4567


