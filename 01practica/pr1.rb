# Ej 5
def reemplazar(str)
  str.gsub(/{/, 'do\n').gsub(/}/, '\nend')
end

# Ej 6 Revisar
def tiempo_en_palabras(t)
  minutes = case t.min
  when 0..10 then " en punto."
  when 11..20 then " y cuarto."
  when 21..34 then " y media."
  when 35..44 then " menos veinticinco."
  when 45..55 then " menos cuarto."
  else "."
  end

  hour = ((35..59) === t.min) ? t.hour + 1 : t.hour
  singular = (hour == 1) ? "la " : "las "
  pre_text = ((56..59) === t.min) ? "Casi son " : "Son "

  pre_text << singular << hour.to_s << minutes
end

# Ej 7
def contar(str, search)
  #    str.downcase.scan(/(?=#{search})/).count
  str.downcase.split(/#{search}/, -1).count - 1
end

# Ej 8 Revisar
def contar_completas(str, search)
  splited_str = str.downcase.split(/#{search}/, -1)

  count = (splited_str[0] == "") ? 1 : 0 # Comienza con search?
  splited_str.each do |substr|
    count += (substr[-1] == " ") ? 1 : 0
  end
  (splited_str[-1] == "") ? count + 1 : count # Termina con search?
end

# Ej 9
def string_reverso(str)
  str.reverse
end

def string_sin_espacio(str)
  str.delete(" ")
end

def string_a_arreglo_ascii(str)
  str.chars.map(&:ord)
end

def string_remplaza_vocal(str)
  change = {"a" => "4", "e" => "3", "i" => "1", "o" => "0", "u" => "6"}

  str.chars.map do |char|
    change[char.downcase] || char
  end.join
end

# Ej 11
# public_send para respetar el encapsulamiento de la clase (Solo ejecutar metodos publicos)

# Ej 12
def longitud(arr)
  arr.map(&:length)
end

# Ej 13
def listar(hash)
  str = ""
  hash.each_with_index do |val, index|
    str << (index + 1).to_s << ". " << val[0].to_s << ": " << val[1].to_s << '\n'
  end
  str
end

# Ej 14
def listar_mejorada(hash, pegamento)
  str = ""
  hash.each_with_index do |val, index|
    str << (index + 1).to_s << ". " << val[0].to_s << pegamento << val[1].to_s << '\n'
  end
  str
end

# Ej 15
def rot13(str)
  str.tr("0-9A-Za-z", "0-9N-ZA-Mn-za-m")
end

# Ej 16
def rot(str, rot)
  ord = "A".ord + rot
  formula = "0-9" + ord.chr + "-ZA-" + (ord - 1).chr + ord.chr.downcase + "-za-" + (ord - 1).chr.downcase
  str.tr("0-9A-Za-z", formula)
end

# Ej 19
def notacion_hexadecimal(arr)
  r, g, b = arr
  "#" + r.to_s(16).rjust(2, "0").upcase + g.to_s(16).rjust(2, "0").upcase + b.to_s(16).rjust(2, "0").upcase
end

def notacion_entera(arr)
  r, g, b = arr
  r + g * 256 + b * 256 * 256
end

# Ej 20
# Obtener la lista de ancestros (superclases) de una clase.
#   => Metodo superclass
# Conocer la lista de métodos de una clase.
#   => Metodo methods
# Conocer la lista de métodos de instancia de una clase.
#   => Metodo instance_methods
# Conocer las variables de instancia de una clase.
#   =>
# Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado
# con attr_reader o similar) accediéndolo desde fuera de éste
#   =>
# Establecer el valor de una variable de instancia de un objeto (sin utilizar un método gene‑
# rado con attr_writer o similar) desde fuera de éste.
#   =>

# Ej 21
def multiplos_de_3_y_5(tope)
  (0..tope).inject do |sum, n|
    sum + ((n % 3 == 0 && n % 5 == 0) ? n : 0)
  end
end

# Ej 22
def multiplos_de(arr, tope)
  (0..tope).inject do |sum, n|
    sum + ((arr.all? { |m| n % m == 0 }) ? n : 0)
  end
end
