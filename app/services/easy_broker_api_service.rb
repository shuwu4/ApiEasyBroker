require 'net/http'
require 'json'

class EasyBrokerApiService
  BASE_URL = 'https://api.stagingeb.com/v1/'.freeze
  API_KEY = 'l7u502p8v46ba3ppgvj5y2aad50lb9'.freeze

  def self.fetch_properties
    url = URI("#{BASE_URL}properties")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request['accept'] = 'application/json'
    request['X-Authorization'] = API_KEY

    response = http.request(request)
    puts response.body 
    JSON.parse(response.body)
  end
end
