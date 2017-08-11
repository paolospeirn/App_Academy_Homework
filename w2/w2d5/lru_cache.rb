class LRUCache

  attr_reader :contents

   def initialize(capacity = 5)
     @capacity = capacity
     @contents = []
   end

   def count
     @contents.length
   end

   def add(el)
     if el == "!"
       self.show
     else
       @contents.push(el)
     end

     if self.contents.length > @capacity
       shorten
     end
     @contents
   end

   # HERE'S HOW THE SOLUTION DEALT WITH ADDING:

  # def add(el)
  #   if @cache.include?(el)
  #     @cache.delete(el)
  #     @cache << el
  #   elsif count >= @size
  #     @cache.shift
  #     @cache << el
  #   else
  #     @cache << el
  #   end
  # end

   def show
     p @contents.dup
   end

   def shorten
     if @contents.length > @capacity
         until @contents.length <= @capacity
           @contents.shift
         end
     end
   end

   private

   def shorten
     if @contents.length > @capacity
         until @contents.length <= @capacity
           @contents.shift
         end
     end
   end

  #  def used?(el)
  #   #identify that an element has been called
  #  end

  #  def reorder(el)
  #   # reorder elements based on when they've been used
  #   if used? (el)
  #     end
   #
  #   end
 end

if __FILE__ == $PROGRAM_NAME

  bob_cache = LRUCache.new(4)

  bob_cache

  bob_cache.add("tangled up in blue")
  bob_cache.add("michael g")
  bob_cache.add(70)
  bob_cache.add("feel my love")
  bob_cache.add("one too many things")

  bob_cache.show




end
