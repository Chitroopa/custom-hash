require('pry')
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

  define_method(:has_key?) do |key|
    @my_key_array.include?(key)
  end

  define_method(:has_value?) do |value|
    @my_value_array.include?(value)
  end

  define_method(:length) do
    @my_key_array.length
  end

#   define_method(:merge) do |merge_array|
# binding.pry
#     @my_key_array + another_array
#     @my_value_array + another_array
#   end

end
