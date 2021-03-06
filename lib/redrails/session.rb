# encoding: utf-8
module Redrails
  module Session
    autoload :VERSION,    'redrails/session/version'
    autoload :Middleware, 'redrails/session/middleware'
  end
end

module ActionDispatch
  module Session
    autoload :RedrailsSessionStore, 'action_dispatch/session/redrails_session_store'
  end
end
