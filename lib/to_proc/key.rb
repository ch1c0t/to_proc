module ToProc
  Key = -> *array do
    -> pair { array.to_proc.call pair[0] }
  end
end
