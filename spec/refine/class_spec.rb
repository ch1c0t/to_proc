require 'to_proc/refine/class'

using ToProc::Refine::Class

class MClass
  attr_reader :value

  def initialize value
    @value = value
  end
end

describe ToProc::Refine::Class  do
  it do
    array = [1, 2, 3].map(&MClass).map(&:value)
    expect(array).to eq [1, 2, 3]
  end
end
