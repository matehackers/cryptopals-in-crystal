BITMASK = 0b0011;
BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

def hexToBase64(str)
  res = ""

  i = 0

  while i < str.size
    substr = str[i, 3]

    b1 = substr[0].to_i(16)
    b2 = substr[1].to_i(16)
    b3 = substr[2].to_i(16)

    r1 = b1 << 2 | b2 >> 2
    r2 = (b2 & BITMASK) << 4 | b3

    res += BASE_64_CHARS[r1]
    res += BASE_64_CHARS[r2]

    i += 3
  end

  res
end

# Mais ou menos assim:
# 3 hexas:           a    0    1
#
# 3 grupos 4 bits 1010 0000 0001
#
# 2 grupos 6 bits 101000  000001
#
# 2 bytes             40       1
#
# Em base 64           o       B
