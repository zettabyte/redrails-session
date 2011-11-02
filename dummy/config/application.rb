# encoding: utf-8
require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "active_resource/railtie"

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
  end
end
