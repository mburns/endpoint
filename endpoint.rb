#!/usr/bin/env ruby

require 'hanami/router'

app = Hanami::Router.new do
  get '/', to: ->(env) { [200, {}, ['<p>Hello, World</p>']] }
end

Rack::Server.start app: app, Port: 8080