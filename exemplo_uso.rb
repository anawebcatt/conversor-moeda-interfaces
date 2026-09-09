require_relative 'app/conversor_moeda'
require_relative 'app/conversor_real_para_euro'
require_relative 'app/conversor_real_para_dolar'
require_relative 'app/conversor_real_para_libra'
require_relative 'app/caixa_troca'

puts "=== Convertendo para Euro ==="
caixa = CaixaTroca.new(ConversorRealParaEuro.new)
puts caixa.trocar(100)

puts "\n=== Convertendo para Dólar ==="
caixa = CaixaTroca.new(ConversorRealParaDolar.new)
puts caixa.trocar(100)

puts "\n=== Convertendo para Libra ==="
caixa = CaixaTroca.new(ConversorRealParaLibra.new)
puts caixa.trocar(100)
