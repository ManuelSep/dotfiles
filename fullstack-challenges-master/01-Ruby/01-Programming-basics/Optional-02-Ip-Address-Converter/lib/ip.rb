def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  number = 0
  ip_address.split('.').each do |number_string|
    number = (number << 8) + number_string.to_i
  end
  number
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  address_elements = []
  [24, 16, 8, 0].each do |radical|
    address_elements << ((number >> radical) & 255)
  end
  address_elements.join(".")
end
