# Ej 1
def ordenar_arreglo(arr)
  arr.sort
end

# Ej2
def ordenar(*arr)
  arr.sort
end

# Ej 3
# ordenar(*entrada)

# Ej 4
def longitud(*data)
  data.each { |s| (puts "\"#{s}\" --> #{s.to_s.length}") }
end

# Ej 5
def cuanto_falta?(time = Time.new(Time.now.year, Time.now.month, Time.now.day + 1, 0, 0, 0))
  "Faltan #{((time - Time.now) / 60).truncate(2)} minutos."
end

# Version memory friendly
def cuanto_falta_mem?(time = nil)
  n_time = Time.now
  time ||= Time.new(n_time.year, n_time.month, n_time.day + 1, 0, 0, 0)
  "Faltan #{((time - n_time) / 60).truncate(2)} minutos."
end
