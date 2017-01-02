module ToProc
  Value = -> *array do
    -> pair { array.to_proc.call pair[1] }
  end
end
