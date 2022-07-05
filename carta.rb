
class Carta
    attr_accessor :numero , :pinta
    def initialize(numero, pinta)
        @numero = numero
        case pinta
        when 'C'
            @pinta = 'Corazon'
        when 'D'
            @pinta = 'Diamante'
        when 'E'
            @pinta = 'Espada'
        when 'T'
            @pinta = 'Trebol'
        end
    end

    def mostrarcarta
        puts "#{self.numero} de #{self.pinta}"
    end

end

