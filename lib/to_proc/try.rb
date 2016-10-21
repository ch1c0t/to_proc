module ToProc
  Try = -> process do
    -> input do
      begin
        output = process[input]
        output.nil? ? input : output
      rescue
        input
      end
    end
  end
end
