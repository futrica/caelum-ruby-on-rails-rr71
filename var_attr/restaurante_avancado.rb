class Restaurante

    def qualifica(nota, msg="obrigado")
        puts "a nota do restaurante foi #{nota} . #{msg}"
    end
end

restaurante_um = Restaurante.new
restaurante_dois = Restaurante.new

restaurante_um.qualifica(10)
restaurante_dois.qualifica(1, "Comida ruim")
