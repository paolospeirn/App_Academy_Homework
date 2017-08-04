class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    keys = @map.map { |pair| pair[0] }

    if keys.include?(key)
      @map.each do |pair|
          pair[1] = value if pair[0] == key
      end
    else
      @map << [key, value]
    end
  end

# their solution
#   def assign(key, value)
#     pair_index = @map.index {|pair| pair[0] == key}
#     pair_index ? @map[pair_index][1] = value : @map << [key, value]
# #    [key, value] # unsure why this is here. don't we want to return entire map?
#   end

   def keys
     @map.map { |pair| pair[0] }
   end

   def look_up(key)
     @map.each do |pair|
       if pair[0] == key
         return pair[1]
       else
         return nil
       end
     end
   end

   def look_up(key)
     @map.each {|pair| return pair[1] if pair[0] == key }
     nil
   end

   def remove(key)
      @map.reject! { |pair| pair[0] == key}
     # nil  # why is this here?
     # makes return value nil instead of the full array with key removed
   end

   def show
     deep_dup(@map)
   end

  # my solution before seeing solution
  #  def show
  #    @map.dup
  #  end

   private
   def deep_dup(arr)
     arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
   end
#
end

p geo = Map.new
p geo.assign(1,2)
p geo.assign(3,4)
p geo.look_up(5)
p geo.remove(3)
p geo.show
