require 'net/http'
require 'json'
# URL de la API de películas
url = URI('http://www.omdbapi.com/?t=V+for+Vendetta&apikey=80f979b9')
# Conexión a la API mediante el protocolo HTTP
http = Net::HTTP.new(url.host, url.port)
# Método GET
request = Net::HTTP::Get.new(url)
# Realizar la solicitud a la API y obtener la respuesta
response = http.request(request)
# Analizar la respuesta JSON y obtener los resultados de la película
data = JSON.parse(response.body)
# Mostrar los resultados de la película
if data['Response'] == 'True'
  puts "Título: #{data['Title']}"
  puts "Año: #{data['Year']}"
  puts "Director: #{data['Director']}"
  puts "Sinopsis: #{data['Plot']}"
else
  puts 'La película no fue encontrada.'
end
