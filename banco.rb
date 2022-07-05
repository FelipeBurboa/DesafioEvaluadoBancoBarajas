class CuentaBancaria
    attr_accessor :saldo
    attr_reader :banco
    def initialize(banco, numero_de_cuenta, saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta)
        puts "====================================="
        puts "Iniciando transferencia desde: #{@banco} hacia: #{cuenta.banco}"
        puts "====================================="
        puts "Saldo inicial #{@banco}: #{saldo}"
        puts "Saldo inicial #{cuenta.banco}: #{cuenta.saldo}"
        puts "====================================="
        puts "Transfiriendo #{monto} desde: #{@banco} hacia: #{cuenta.banco}"
        puts "====================================="
        @saldo = @saldo-monto
        cuenta.saldo = cuenta.saldo + monto
        puts "Saldo final #{@banco}: #{saldo}"
        puts "Saldo final #{cuenta.banco}: #{cuenta.saldo}"
    end
end

cuenta1 = CuentaBancaria.new('Banco1',1,5000) #Cuenta1
cuenta2 = CuentaBancaria.new('Banco2',2,5000) #Cuenta2
cuenta3 = CuentaBancaria.new('Banco3',3,5000) #Cuenta3
cuenta1.transferir(5000,cuenta2) #Transfiero 5000 desde cuenta1 a cuenta2

#Creo array de cuentas de Felipe
cuentas = []
cuentas.push(cuenta1)
cuentas.push(cuenta2)
cuentas.push(cuenta3)

class Usuario
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas 
    end
    #Salto total de cuenta1, cuenta2 y cuenta3
    def saldo_total 
        total = 0
        @cuentas.each do |cuenta|
            total += cuenta.saldo
        end
        puts "====================================="
        puts "El usuario: #{@nombre} tiene #{total} en total en todos sus bancos"
        puts "====================================="
    end
end

usuario1 = Usuario.new('Felipe',cuentas)
usuario1.saldo_total