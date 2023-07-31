require 'uri'
require 'net/http'

url = URI('https://jsonplaceholder.typicode.com/users')

# conección a la url
https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

# Utilizango método GET
request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body
