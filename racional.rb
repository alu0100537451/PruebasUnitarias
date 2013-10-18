#Fichero racional.rb
require "./gcd.rb"

class Racional

attr_reader :dem,:num
#inicinalizamos los objetos
        def initialize(num, denomin)                
                
                #atributo
                        @num=num
                        @dem=denomin
        end
#metodo para convertir en strings
        def to_s
                "#{@num}/#{@dem}"
        end
#metodo suma
        def +(other)                
                if (@dem == other.dem )
                        nume=@num + other.num
                        deno=@dem
                        mcd=gcd(nume,deno)
                else
                        aux= @dem * other.dem
                        nume = ((aux / @dem ) * @num) + ((aux / other.dem ) * other.num)
                        deno = @dem*other.dem
                        mcd=gcd(nume,deno)
                end
                
                temp = Racional.new(nume/mcd, deno/mcd)
        end
#metodo resta
        def - (other)
                if (@dem == other.dem )
                        nume=@num - other.num
                        deno=@dem
                        mcd=gcd(nume,deno)
                
                else
                        aux= @dem * other.dem
                        nume = ((aux / @dem ) * @num) - ((aux / other.dem ) * other.num)
                        deno=@dem*other.dem
                        mcd=gcd(nume,deno)
                
                end
                
                
                temp = Racional.new(nume/mcd, deno/mcd)
        end
#metodo multiplicación
        def * (other)
                nume = @num * other.num
                deno = @dem * other.dem
                mcd=gcd(nume,deno)
                temp = Racional.new(nume / mcd ,deno / mcd )
        
        end        
#metodo división
        def / (other)
        
                nume = @num *other.dem
                deno = @dem * other.num
                mcd= gcd(nume,deno)
                temp = Racional.new(nume/mcd, deno/mcd )
        
        end
        
        
end
