class Animal
  def expresion(mensaje)
   puts mensaje
  end
end

class Perro < Animal
end

class Gato < Animal
end

Perro.new.expresion('Guau')
Gato.new.expresion('Miau')