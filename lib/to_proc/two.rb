module ToProc
  Two = -> method do
    -> receiver, argument { receiver.send method, argument }
  end
end
