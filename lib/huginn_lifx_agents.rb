require "huginn_lifx_agents/version"
require "huginn_agent"
require "omniauth-lifx"

module HuginnLifxAgents
  I18n.load_path << "#{File.dirname(__FILE__)}/locales/devise.en.yml"

  Devise.setup do |config|
    if defined?(OmniAuth::Strategies::Lifx) &&
      (key = ENV["LIFX_CLIENT_ID"]).present? &&
      (secret = ENV["LIFX_CLIENT_SECRET"]).present?
      config.omniauth(:lifx, key, secret)
    end
  end
end

HuginnAgent.load 'huginn_lifx_agents/clients/lifx_client'
HuginnAgent.load 'huginn_lifx_agents/concerns/lifx_agentable'
HuginnAgent.register 'huginn_lifx_agents/lifx_pulse_lights_agent'
HuginnAgent.register 'huginn_lifx_agents/lifx_toggle_lights_agent'
