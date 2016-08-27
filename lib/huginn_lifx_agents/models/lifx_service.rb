class LifxService < Service
  def self.provider_specific_options(_)
    { name: 'LIFX User' }
  end
end
