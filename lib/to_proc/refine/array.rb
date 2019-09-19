require 'to_proc'

module ToProc
  module Refine
    module Array
      refine ::Array do
        def to_proc
          if size == 2
            case
            when self[0].is_a?(Symbol)
              method, argument = self
              return -> receiver { receiver.send method, argument }
            when self[1].is_a?(Symbol)
              receiver, method = self
              return -> argument { receiver.send method, argument }
            end
          end

          arguments = self
          -> receiver { receiver.to_proc[*arguments] }
        end
      end
    end
  end
end
