require('rspec')
require('myhash')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#has_key?") do
    it("returns true if the key is present") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "bark")
      expect(test_hash.has_key?("kitten")).to(eq(true))
    end
  end

  describe("#has_value?") do
    it("returns true if the value is present") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "bark")
      expect(test_hash.has_value?("cute")).to(eq(true))
    end
  end

  describe("#length") do
    it("returns length of MyHash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "bark")
      expect(test_hash.length()).to(eq(2))
    end
  end

  # describe("#merge") do
  #   it("returns merge of 2 arrays") do
  #     test_hash_1 = MyHash.new()
  #     test_hash_2 = MyHash.new()
  #     test_hash_1.myStore("kitten", "cute")
  #     test_hash_1.myStore("dog", "bark")
  #
  #     test_hash_2.myStore("snake", "hiss")
  #     test_hash_2.myStore("bird", "sing")
  #     expect(test_hash_1.merge(test_hash_2)).to(eq())
  #   end
  # end
end
