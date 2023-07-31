require 'uri'
require 'net/http'
require 'json'

def request(url_requested)
  #el cuerpo del método request tendrá el código asociado para permitir dicha conexión
  url = URI(url_requested)
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true  #verificar si está habilitado el protocolo https.
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER # agente intercepta datos en el punto medio de conexión entre el cliente y el servidor.
  
  request = Net::HTTP::Get.new(url)
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
  
  response = http.request(request)
  return JSON.parse(response.body)
end
# Llamada a la función request para obtener los datos de la API
data = request('https://jsonplaceholder.typicode.com/photos')[0..5]
print data
puts ()

photos = data.map{|x| x['url']}
print photos

html = ""

photos.each do |photo|
html += "<img src=\"#{photo}\">\n"
end

File.write('output.html', html)