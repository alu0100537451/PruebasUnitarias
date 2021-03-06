# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def test_1
    assert_equal "16/9" ,(Racional.new(8,18) + Racional.new(12,9)).to_s
   end

   def test_2
    assert_equal "-8/9",(Racional.new(8,18) - Racional.new(12,9)).to_s
   end


   def test_3
    assert_equal "3/9",(Racional.new(1,3) * Racional.new(3,3)).to_s
   end
 
   def test_4
    assert_equal "5/20",(Racional.new(2,20) - Racional.new(3,10)).to_s
   end
 
end



