# frozen_string_literal: true

# This class represent a user in the system
class User
  attr_accesor :user_name, :password, :email, :rol

  def initialize(user_name, password, email, rol)
    self.user_name = user_name
    self.password = password
    self.email = email
    self.rol = rol
  end

  def puede_ver?(document)
    rol.puede_ver? document
  end

  def puede_moficiar?(document)
    rol.puede_modificar? document
  end

  def puede_borrar?(document)
    rol.puede_borrar? document
  end
end
