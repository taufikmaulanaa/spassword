require "crypto/bcrypt/password"

module Spassword
  VERSION = "0.1.0"

  def self.create(password)
    password = Crypto::Bcrypt::Password.create password, cost: 10
    password
  end

  def self.verify(hashPassword, password)
    begin
      hashPassword = Crypto::Bcrypt::Password.new(hashPassword)
      isVerified = hashPassword.verify(password)
      isVerified
    rescue ex
      Log.error{ ex.message }
      false
    end
  end
end
