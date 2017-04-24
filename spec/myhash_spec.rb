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
      


      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
end
