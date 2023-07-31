require 'uri'
require 'net/http'
require 'json'

# Definición de la función request que realiza la solicitud HTTP GET
def request(url_requested)
  url = URI(url_requested)
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  request = Net::HTTP::Get.new(url)
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
  response = http.request(request)
  return JSON.parse(response.body)
end

# Llamada a la función request para obtener los datos de la API de imágenes de perros
data = request('https://dog.ceo/api/breed/hound/images').values[0][0..10]

# Crear un archivo HTML con las imágenes de los perros
html = ""
breeds = data.each do |breed|
  html += "<img src=\"#{breed}\">\n"
end
File.write('perritos.html', html)