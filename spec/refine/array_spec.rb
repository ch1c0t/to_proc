require 'to_proc/refine/array'

using ToProc::Refine::Array

describe ToProc::Refine::Array  do
  describe 'when the size is 2' do
    it 'has a special proc when the first element is a Symbol' do
      array_of_arrays = [[:a, :b, :c], [:b, :c, :d], [:e, :f, :g]]
      arrays_which_include_a = array_of_arrays.select &[:include?, :a]
      expect(arrays_which_include_a).to eq [[:a, :b, :c]]
    end

    it 'has a special proc when the second element is a Symbol' do
      array = [:a, :b, :c]
      another_array = [1, :a, 2, :c, :d].select &[array, :include?]
      expect(another_array).to eq [:a, :c]
    end
  end

  describe 'when of any size' do
    it 'has a special proc' do
      proc0 = -> first, second, third { "#{first}#{second}#{third}" }
      proc1 = proc { |first| first }
      array = [proc0, proc1]

      result = array.map &[:a, :b, :c]

      expect(result).to eq ['abc', :a]
    end
  end
end
