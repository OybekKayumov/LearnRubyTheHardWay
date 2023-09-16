class C
  a = 1

  def local_a
    a = 2
    puts a
  end
  
  puts a
end

c = C.new
c.local_a
# 1
# 2

puts
# scope and resolution of constants
module M
  class C
    X = 2
    class D
      module N
        X = 1
      end
    end
    puts D::N::X   # 1
  end
end

puts
puts M::C::D::N::X   # 1
puts M::C::X   # 2