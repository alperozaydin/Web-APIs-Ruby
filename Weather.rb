require 'open-uri'
require "net/http"
require 'json'
require_relative 'ProxyInterface.rb'

class Weather < ProxyInterface

	def initialize(location)
		@location = location.connection
		@weather
	end

	def connection()
		begin
			hash = @location
			@weather = Net::HTTP.get(URI("http://api.openweathermap.org/data/2.5/forecast/daily?&units=metric&APPID=2a4fdb1d35f01d0a8ce35c13c3097cce&q=" + hash['city']))
			@weather = JSON.parse(@weather)
			return @weather
		rescue
			fallback
		end

	end


	def fallback
		puts "Weather information is not available!"
		return {"list"=>[{"temp"=>{"min"=>-1.02, "max"=>5.49}, "pressure"=>987.9, "humidity"=>80, "weather"=>[{"main"=>"Rain"}]}]}
	end

end
