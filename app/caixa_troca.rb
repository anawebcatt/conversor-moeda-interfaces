# Aqui é o consumirdor depende só da interface
class CaixaTroca
  def initialize(conversor)
    @conversor = conversor
  end

  def trocar(valor)
    # Chama o metodo converter de qualquer implementação que foi passada
    @conversor.converter(valor)
  end
end
