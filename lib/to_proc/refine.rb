require 'to_proc/refine/object'
require 'to_proc/refine/class'
require 'to_proc/refine/array'

module ToProc
  module Refine
    include Object
    include Class
    include Array
  end
end
