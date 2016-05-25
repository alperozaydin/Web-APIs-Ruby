require 'open-uri'
require "net/http"
require 'json'
require_relative 'ProxyInterface.rb'

class IPAddress < ProxyInterface

	def initialize()
		@address
	end

	def connection
		begin
			@address = Net::HTTP.get(URI("https://api.ipify.org?format=json"))
			@address = JSON.parse(@address)
			return @address
		rescue
			fallback
		end
	end

	def fallback
		puts "IP Address couldn't get!"
		return {"ip"=>"149.125.61.13"}
	end

end


