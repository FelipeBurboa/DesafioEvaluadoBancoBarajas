require_relative 'carta'

class Baraja
    def initialize
      @cartas = []
      pintas = ['C', 'D', 'E', 'T']
      numeros = ['1','2','3','4','5','6','7','8','8','9','10','11','12','13']
        #Creando la baraja de cartas
        pintas.each do |pinta|
            numeros.each do |numero|
                carta = Carta.new(numero,pinta)
                @cartas << carta
            end
        end

    end

    #Para mostrar la baraja
    def mostrarbaraja
        @cartas.each do |carta|
            carta.mostrarcarta
        end
    end

    #Para revolver las cartas
    def barajar
        @cartas.shuffle!
    end

    #Para remover una con pop y mostrar la carta
    def sacarprimera
        @cartas.reverse.pop.mostrarcarta
        #print @cartas.shift.mostrarcarta
    end

    #Para mostrar 5 cartas
    def mostrarcinco
            cinco = @cartas.first(5)
            cinco.each do |carta|
                carta.mostrarcarta
            end
    end

end


baraja = Baraja.new
baraja.mostrarbaraja #Para mostrar las baraja antes del shuffle
baraja.barajar #Para revolver las cartas
baraja.mostrarbaraja #Para mostrar las baraja despues del shuffer
puts ""
baraja.sacarprimera #Para remover una con pop y mostrar la carta
puts ""
baraja.mostrarcinco #Para mostrar 5 cartas