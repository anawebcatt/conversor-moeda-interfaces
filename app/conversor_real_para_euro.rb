# 1 implementação: converte real para euro
class ConversorRealParaEuro < ConversorMoeda
  def converter(valor)
    taxa = 0.20
    resultado = valor * taxa
    "Convertendo: R$ #{valor} = EUR #{resultado.round(2)}"
  end
end
