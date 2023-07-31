class Usuario
  def registro (email, contrasena)
    puts "El email #{email} fue registrado con éxito"
  end
end

benito = Usuario.new
puts benito
benito.registro("email@example.cl", "contrasena")

class Persona
   def saludar
    puts "hello!"
   end
end

jorege = Persona.new
puts jorege

class Persona
  #Definimos el método saluiar
  def saludar
    # Ejecutamos el código
    puts "Hola"
  end
end

#Generamos una instancia de Persona
victoria = Persona.new
puts victoria
# puts victoria.class
# puts victoria.methods

#ejecutamos el método saludar desde la nueva instancia
victoria.saludar()

#Llamando al método desde main
#saludar() # Traceback (most recent call last): 01_clase_persona.rb:13:in `<main>': undefined method `saludar' for main:Object (NoMethodError)

class Victoria
  #defenimos el método ladrido
  def ladrido
    puts "guau guau!!"
  end
end
#Generamos la instancia de la clase y se llama al método
victoria = Victoria.new
victoria.ladrido #guau guau!!