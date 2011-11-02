# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "redrails/session/version"

Gem::Specification.new do |s|
  s.name        = "redrails-session"
  s.version     = Redrails::Session::VERSION
  s.authors     = ["Kendall Gifford"]
  s.email       = ["zettabyte@gmail.com"]
  s.homepage    = "https://github.com/zettabyte/redrails-session"
  s.summary     = "Redis session store for rails applications."
  s.description = <<-DESC.gsub(/^\s*/, "")
    Redis session store for rails applications.

    This provides convenient glue to use the redrack-session gem.
  DESC

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency     "redrack-session", "~> 1.0.0"
end