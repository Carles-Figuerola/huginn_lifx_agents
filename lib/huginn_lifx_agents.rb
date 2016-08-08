require "huginn_lifx_agents/version"
require "huginn_agent"

module HuginnLifxAgents
  # Your code goes here...
end

HuginnAgent.load 'huginn_lifx_agents/clients/lifx_client'
HuginnAgent.load 'huginn_lifx_agents/concerns/lifx_agentable'
HuginnAgent.register 'huginn_lifx_agents/lifx_pulse_lights_agent'
HuginnAgent.register 'huginn_lifx_agents/lifx_toggle_lights_agent'
