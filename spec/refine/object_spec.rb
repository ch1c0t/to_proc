require 'to_proc/refine/object'

using ToProc::Refine::Object

module MObject
  def self.[] number
    number + 1
  end
end

describe ToProc::Refine::Object  do
  it do
    array = [1, 2, 3].map &MObject
    expect(array).to eq [2, 3, 4]
  end
end
