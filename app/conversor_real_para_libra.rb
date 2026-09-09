# 3 implementação: converte real para libra
class ConversorRealParaLibra < ConversorMoeda
  def converter(valor)
    taxa = 0.16
    resultado = valor * taxa
    "Convertendo: R$ #{valor} = GBP #{resultado.round(2)}"
  end
end
