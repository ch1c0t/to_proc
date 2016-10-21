module ToProc
  Link = -> method do
    -> receiver, argument { receiver.send method, argument }
  end
end
