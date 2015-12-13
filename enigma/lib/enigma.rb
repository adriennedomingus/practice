require_relative 'encrypt'
require_relative 'decrypt'
require_relative 'crack'

class Enigma < Encrypt

  def initialize(key = Random.rand(0..99999).to_s, date = Time.now.strftime("%d%m%y").to_i)
    @key = key
    @date = date
  end

  def encrypt(message, key = Random.rand(0..99999).to_s, date = Time.now.strftime("%d%m%y").to_i)
    Encrypt.new(@key, @date).encrypt(message, key, date)
  end

  def decrypt(message, key = Random.rand(0..99999).to_s, date = Time.now.strftime("%d%m%y").to_i)
    Decrypt.new(@key, @date).decrypt(message, key, date)
  end

  def crack(message, date = Time.now.strftime("%d%m%y").to_i)
    Crack.new(@date).crack(message, date)
  end

end
