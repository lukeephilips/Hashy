require('pry')
require("rspec")
require('hashy')

describe(Hashy) do
  describe('#store') do
    it('pushes key and value to corresponding arrays with same index point in each') do
      test_hashy = Hashy.new()
      expect(test_hashy.store("a", 1)).to eq 1
    end
  end
  describe('#fetch') do
    it('pulls value corresponding to a given key from the values array') do
      test_hashy = Hashy.new()
      test_hashy.store("a", 1)
      expect(test_hashy.fetch("a")).to eq(1)
    end
  end
  describe('#key') do
    it('returns key of a given value') do
      test_hashy = Hashy.new()
      test_hashy.store("a", 1)
      expect(test_hashy.key(1)).to eq "a"
    end
  end
  describe('#has_key?') do
    it('returns boolean of whether key exists or not') do
      test_hashy = Hashy.new()
      test_hashy.store("a", 1)
      expect(test_hashy.has_key?("a")).to eq true
    end
  end
end
