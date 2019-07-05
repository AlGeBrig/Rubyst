puts "Программа рассчитывает количество 1 порции л-карнитина в зависимости от концентрации вещества в бутылки"
puts "Введите объем 1 порции (мл)"
con = gets.chomp.to_f

puts "Введите количество вещества в одной порции"
portion = gets.chomp.to_f

puts "Введите необходимое количество вещества в одной порции"
need = gets.chomp.to_f

need_portion = (con * need / portion).to_f
puts "Вам нужна порция в #{need_portion} мл"

puts "Объем 1 бутылки с л-карнитином в миллилитрах (граммах)"
bottle = gets.chomp.to_f

shots = bottle / need_portion

puts "В одной бутылке #{bottle.to_i} мл содержится #{shots.to_i} порций по #{need_portion} мл "