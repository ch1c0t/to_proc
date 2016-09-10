ToProc = -> name do
  Module.new do
    define_method :to_proc do
      method(name).to_proc
    end
  end
end
