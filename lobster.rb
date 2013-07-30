require 'rack/request'
require 'rack/response'

module Rack
  class Lobster
    LobsterString = "a lobster"

    def call(env)
      req = Request.new(env)

      req.env.keys.sort.each { |x| puts "#{x} => #{req.env[x]}" }

      if req.GET["flip"] == "left"
        lobster = LobsterString.reverse
        href = "?flip=right"
      elsif req.GET["flip"] == "crash"
        raise "Lobster crashed"
      else
        lobster = LobsterString
        href = "?flip=left"
      end

      res = Response.new
      res.write <<-"EOS"
      <title>Lobstericious!</title>
      <pre>
      #{lobster}
      </pre>
      <p><a href='#{href}'>flip!</a></p>
      <p><a href='?flip=crash'>crash!</a></p>
      EOS
      res.finish
    end
  end
end

if $0 == __FILE__
  require 'rack'
  require 'rack/showexceptions'
  Rack::Server.start(
    :app => Rack::ShowExceptions.new(
              Rack::Lint.new(
                Rack::Lobster.new)), 
    :Port => 9292,
    :server => 'thin'
  )
end
