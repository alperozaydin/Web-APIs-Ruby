require 'open-uri'
require "net/http"
require 'json'

class ProxyInterface

	def connection
		raise "abstract method"
	end

	def fallback
		raise "abstract method"
	end

end
