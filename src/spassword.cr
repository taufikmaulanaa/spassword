require "crypto/bcrypt/password"

module Spassword
  VERSION = "0.1.0"

  def self.create(password)
    password = Crypto::Bcrypt::Password.create password, cost: 10
    password
  end

  def self.verify(hashPassword, password)
    begin
      password = Crypto::Bcrypt::Password.new(password)
      isVerified = password.verify(hashPassword)
      isVerified
    rescue ex
      false
    end
  end
end
