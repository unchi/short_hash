require "short_hash/version"

module ShortHash

  def self.gen num = 0
    v = self.raw_gen62
    if num > 0
      v = v[0, num]
    end
    v
  end

  def self.gen36 num = 0
    v = self.raw_gen36
    if num > 0
      v = v[0, num]
    end
    v
  end

  def self.gen_number num = 0
    self.raw_gen_number num
  end

private

  def self.raw_gen62
    charlist = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    charlen = charlist.length()

    val = rand().to_s + ':' + Time.now.to_f.to_s
    u = Digest::MD5.hexdigest(val)

    digit = []

    no = u.hex
    begin
      no, c = no.divmod charlen
      digit << charlist[c]
    end while no > 0

    digit.join ''
  end

  def self.raw_gen36
    charlist = '0123456789abcdefghijklmnopqrstuvwxyz'
    charlen = charlist.length()

    val = rand().to_s + ':' + Time.now.to_f.to_s
    u = Digest::MD5.hexdigest(val)

    digit = []

    no = u.hex
    begin
      no, c = no.divmod charlen
      digit << charlist[c]
    end while no > 0

    digit.join ''
  end

  def self.raw_gen_number num = 0
    s = [*0..9]
    r = s.sample num
    r.join ''
  end

end
