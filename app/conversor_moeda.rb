# Aqui é a interface que todos irão seguir
class ConversorMoeda
  def converter(valor)
    # Lança um erro se tentar usar a interface sem implementar esse metodo
    raise NotImplementedError, "As subclasses devem implementar o método converter"
  end
end
