class MyHash
  define_method(:initialize) do
    @my_key_array = []
    @my_value_array =[]
  end

  define_method(:myStore) do |key, value|
    @my_key_array.push(key)
    @my_value_array.push(value)
  end

  define_method(:myFetch) do |key|
    index = @my_key_array.index(key)
    @my_value_array[index]
  end
end
