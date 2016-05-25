require_relative 'IPAddress.rb'
require_relative 'Country.rb'
require_relative 'Weather.rb'


class Decorator

	def initialize
		
		@o3 = Weather.new(Country.new(IPAddress.new()))
	end

	def display
		api = @o3.connection
		puts "Weather: " + api['list'][0]['weather'][0]['main'].to_s
		puts "Mininmum temperature: " + (api['list'][0]['temp']['min']).to_s + " C"
		puts "Maximum temperature: " + (api['list'][0]['temp']['max']).to_s + " C"
		puts "Pressure: " + (api['list'][0]['pressure']).to_s
		puts "Humidity: " + (api['list'][0]['humidity']).to_s
		
	end
end

