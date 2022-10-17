class NWSFacade
    def self.retrieve_disaster(location)
      weather_events = NWSService.get_disaster(location)
        weather_events[:features].map do |alert|
            Disaster.new(alert)
        end
    end
end