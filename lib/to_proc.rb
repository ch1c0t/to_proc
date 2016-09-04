ToProc = -> name do
  Module.new do
    define_method :to_proc do
      respond_to?(name) ? method(name).to_proc : super
    end
  end
end
