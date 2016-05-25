require 'open-uri'
require "net/http"
require 'json'
require_relative 'ProxyInterface.rb'

class Country < ProxyInterface

	def initialize(address)
		@address = address.connection
		@location
	end

	def connection()
		begin
			hash = @address
			@location = Net::HTTP.get(URI.parse("http://ip-api.com/json/" + hash['ip']))
			@location = JSON.parse(@location)
			return @location
		rescue
			fallback
		end

	end

	def fallback
		puts "There is no location for this IP address!"
		return {"city"=>"Binghamton"}
	end

end
