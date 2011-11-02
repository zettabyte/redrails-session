# encoding: utf-8
require 'redrack/session/middleware'
module Redrails
  module Session
    class Middleware < Redrack::Session::Middleware
      def initialize(app, options = {})
        options[:expire_after] ||= options[:expires]
        options[:key]          ||= "rails.session"
        super
      end
    end
  end
end
