class Franquia

    def initialize
        @restaurantes = []
    end

    def adiciona(*restaurantes)
        for restaurante in restaurantes
            @restaurantes << restaurante

        end
    end

    def mostra
        @restaurantes.each do |r|
            puts r.nome
        end
    end

    def relatorio
        @restaurantes.each do |r|
            yield r
        end
    end



end

class Restaurante
    attr_accessor :nome

 #   def initialize(nome)
 #       puts "criando um novo restaurante: #{nome} "
 #       @nome = nome
 #   end

#    def qualifica(msg="obrigado")
#        puts "a nota do #{@nome} foi #{@nota}. #{msg}"
#    end

 #   def nota=(nota)
 #       @nota = nota
 #   end

 #   def nota
 #       @nota
 #   end
    #
    def fechar_conta(dados)
        puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}
        . Comentário: #{dados[:comentario]}"
    end

end

restaurante_um = Restaurante.new
restaurante_um.nome = "fasano"
restaurante_dois = Restaurante.new
restaurante_dois.nome = "fogo de chao"

#restaurante_um.nota = 10
#restaurante_dois.nota = 1
#restaurante_um.qualifica(10)
#restaurante_dois.qualifica("Comida ruim")

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

restaurante_um.fechar_conta :valor => 50, :nota => 9, :comentario => "gostei"

franquia.mostra

franquia.relatorio do |r|
    puts "Restaurante cadastrado: #{r.nome}"
end
