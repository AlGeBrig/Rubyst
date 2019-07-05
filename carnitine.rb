puts "Программа рассчитывает количество 1 порции л-карнитина в зависимости от концентрации вещества в бутылки"
puts "Введите объем 1 порции (мл)"
con = gets.chomp.to_i

puts "Введите количество вещества в одной порции"
portion = gets.chomp.to_i

puts "Введите необходимое количество вещества в одной порции"
need = gets.chomp.to_i

need_portion = con * need / portion
puts "Вам нужна порция в #{need_portion}"