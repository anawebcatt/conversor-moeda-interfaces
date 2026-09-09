# 2 implementação: converte real para dólar
class ConversorRealParaDolar < ConversorMoeda
  def converter(valor)
    taxa = 0.20
    resultado = valor * taxa
    "Convertendo: R$ #{valor} = USD #{resultado.round(2)}"
  end
end
