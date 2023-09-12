module MyModule
  def ruby_version
    system("ruby -v")
  end
end

class ModuleTester
  include MyModule

end

mt = ModuleTester.new
mt.ruby_version