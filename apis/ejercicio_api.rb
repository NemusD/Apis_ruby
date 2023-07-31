require 'net/http'
require 'json'

url = URI('https://jsonplaceholder.typicode.com/users')
response = Net::HTTP.get(url)
users = JSON.parse(response)

puts 'Listado completo de usuarios:'
users.each do |user|
  puts "User ID: #{user['id']}"
  puts "Name: #{user['name']}"
  puts "Username: #{user['username']}"
  puts '---------------------------'
end

# Datos del nuevo usuario
new_user_data = {
  id: 11,
  name: 'Marge Simpson',
  username: 'MargeSimpson'
}

url = URI('https://jsonplaceholder.typicode.com/users')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
request = Net::HTTP::Post.new(url)
request.body = new_user_data.to_json
request['Content-Type'] = 'application/json'
response = http.request(request)

if response.code.to_i == 201
  puts 'Código 201: Nuevo usuario creado con éxito.'
else
  puts 'Error al crear el nuevo usuario.'
end
