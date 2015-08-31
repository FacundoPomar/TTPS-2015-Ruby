#Devolver info sobre la hora
def hora_actual

	min = Time.now.min

	if (0..10).include?(min)
		return "En punto"
	elsif (11..20).include?(min)
		return "y cuarto"
	elsif (21..34).include?(min)
		return "y media"
	elsif (35..44).include?(min)
		return "#{(Time.now + (60*60)).hour} menos veiticinco"
	elsif (45..55).include?(min)
		return "#{(Time.now + (60*60)).hour} menos cuarto"
	else
		return "casi las #{(Time.now + (60*60)).hour}"	
	end
end

puts hora_actual

