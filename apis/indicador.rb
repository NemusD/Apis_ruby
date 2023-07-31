require 'uri'
require 'net/http'
require 'json'

# URL de la API
url = URI('https://mindicador.cl/api')

# Conección a la API protocolo http
https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

# método GET
request = Net::HTTP::Get.new(url)

# convertir JSON en hash y almacenar en results
response = https.request(request)
results = JSON.parse(response.read_body)

# Transformar el resultado en arreglo e imprimir UF
transform = results.to_a
print transform[3]
puts
