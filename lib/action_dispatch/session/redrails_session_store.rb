# encoding: utf-8
require 'redrack/session/middleware'
require 'action_dispatch/middleware/session/abstract_store'

module ActionDispatch
  module Session
    class RedrailsSessionStore < Redrack::Session::Middleware
      include Compatibility
      include StaleSessionCheck
    end
  end
end
