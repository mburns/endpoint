#!/usr/bin/env ruby

require 'hanami/router'

app = Hanami::Router.new
endpoint = ->(_env) { [200, {}, ['<p>Hello, World</p>']] }

router.get    '/', to: endpoint
router.post   '/', to: endpoint

# TODO : check for the Accept header, respond differently if found:
# get '/', to: ->(_env) { [200, {"HTTP_ACCEPT"=>"application/json", "CONTENT_TYPE"=>"application/json"}, ['{"message": "Good morning"}']] }

Rack::Server.start app: app, Port: 8080
