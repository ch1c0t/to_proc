require 'to_proc'

module ToProc
  module Refine
    module Object
      refine ::Object do
        include ToProc[:[]]
      end
    end
  end
end
