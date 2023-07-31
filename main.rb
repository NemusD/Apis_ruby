# a = [1, 2, 3, 4]
# puts a.count()
# 4

# class Mascota
#    def initialize(nuevo_nombre, edad)
#     @nombre = nuevo_nombre
#     @edad = edad
#    end
#   def nombre
#     @nombre
#     @edad
#   end
# end
# m1 = Mascota.new("Shadow", 23)
# puts m1.nombre
#Traceback … undefined method `nombre' for #<Mascota:0x000055930950ecd0 @nombre="Shadow"> (NoMethodError)

# class Test
#  def foo
#   @a = 5
#  end
  
#  def bar
#   puts @a
#  end
# end
# test = Test.new
# test.foo
# test.bar # 5

# class Perro
#   def initialize(nombre)
#     @nombre = nombre
#     puts nombre
#   end

#   def ladrar (ladrido)
#     @ladrido = ladrido
#     puts ladrido
#   end
# end

# perro = Perro.new("Beniton")
# perro.ladrar("Guau Guau!!")

#Declaración de clase
class Mascota
  #Método Constructor
  def initialize(nombre)
    @nombre = nombre
  end

  #método getter
  def nombre 
    @nombre
  end

  #Método setter
  def nombre=(dato)
    @nombre = dato
  end
end

#Instancia 
m1 = Mascota.new("Benito")
puts m1.nombre
m1.nombre = "Santi"
puts m1.nombre