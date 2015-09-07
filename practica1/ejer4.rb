#Devolver info sobre la hora

def hora_actual(aHour)

	def next_hour(aHour)
		(aHour + 360).hour
	end

	case aHour.min
	when 0..10
		"#{aHour.hour} En Punto"
	when 11..20
		"#{aHour.hour} Y cuarto"
	when 21..34
		"#{aHour.hour} y media"
	when 35..44
		"#{next_hour(aHour)} menos veiticinco"
	when 45..55
		"#{next_hour(aHour)} menos cuarto"
	when 56..59
		"casi las #{next_hour(aHour)}"
	else
		"error"
	end

end

puts hora_actual(Time.now)

