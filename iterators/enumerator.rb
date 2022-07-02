e = [*1..3].each

p e.class  # Enumerator

p e.size  # 3

p e.next # 1

rainbow = %w[red orange yellow green gray indogo violet]
arr = rainbow.map.with_index { |color, ind| "#{ind}: #{color}" }

p arr
# ["0: red", "1: orange", "2: yellow", "3: green", "4: gray", "5: indogo", "6: violet"]
