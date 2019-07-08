arr = "Программа рассчитывает количество 1 порции л-карнитина в зависимости от концентрации вещества в бутылке"

# It would be nice to make a method to do substitution instead of writing arguments over and over again

arr.size.times do |i|
    print arr[i]
    sleep 0.02
end

puts ""
puts "Введите объем 1 порции (мл): "
con = gets.chomp.to_f

print "Введите количество вещества в одной порции: "
portion = gets.chomp.to_f

print "Введите необходимое количество вещества в одной порции: "
need = gets.chomp.to_f

need_portion = (con * need / portion).to_f
puts "Вам нужна порция в #{need_portion} мл"

print "Объем 1 бутылки с л-карнитином в миллилитрах (граммах): "
bottle = gets.chomp.to_f

shots = bottle / need_portion

puts "В одной бутылке #{bottle.to_i} мл содержится #{shots.to_i} порций по #{need_portion} мл"
