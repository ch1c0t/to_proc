require 'to_proc'

module ToProc
  module Refine
    module Class
      refine ::Class do
        include ToProc[:new]
      end
    end
  end
end
