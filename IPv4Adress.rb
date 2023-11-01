def is_ipv4_address?(str)
  parts = str.split('.')

  return false if parts.length != 4

  parts.each do |part|
    return false unless part.match(/^\d+$/)  # перевірка що символи є цифрами
    return false if part.to_i < 0 || part.to_i > 255  # перевірка чи числа в межах 0 - 255
    return false if part.to_i.to_s != part  # перевіряємо, чи немає ведучіх нулів
  end
  true
end

puts is_ipv4_address?("192.168.1.1")  # +
puts is_ipv4_address?("255.255.255.0")  # +
puts is_ipv4_address?("0.0.0.0")  # +
puts is_ipv4_address?("256.0.0.1")  # -
puts is_ipv4_address?("192.168.01.1")  -
puts is_ipv4_address?("192.168.1")  # -
