# utf-8
require 'redrails-session'
Dummy::Application.config.session_store :redrails_session_store, :key => '_dummy_session'
