require "okcomputer-newrelic-ignore/version"

require 'okcomputer'
require File.join OKComputer::Engine.paths["app/controllers"].expanded.first, "ok_computer_controller.rb"
require 'new_relic/agent/instrumentation/controller_instrumentation'
class OkComputerController
  include NewRelic::Agent::Instrumentation::ControllerInstrumentation
  newrelic_ignore
end
