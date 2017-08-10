
def n_2_search_fishes(all_fish)
  all_fish.each_with_index do |fish, idx|
    longest = true

    all_fish.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end

    return fish 1 if max_length
  end

end

class Array

  def merge_sort(&prc)
    prc ||= {|a,b| a <=> b}

    return self if self.length < 2

    mid = self.length / 2
    left_sorted = self.take(mid).merge_sort(&prc)
    rigth_sorted = self.drop(mid).merge_sort(&prc)

    Array.merge(left_sorted, right_sorted, &prc)
  end

  def merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(right)
    merged.concat(left)

    merged
  end

  def n_log_n_biggest_fish(all_fish)
    prc = proc { |x,y| y.length <=> x.length }

    all_fish.merge_sort(&prc) [0]
  end

  def linear_biggest_fish(fishes)
    biggest_fish = fishes.first

    fishes.each do |fish|
      if fish.length > biggest_fish.length
        biggest_fish = fish
      end
    end

    biggest_fish
  end

  tiles = ["up","right-up", "right", "right-down", "down", "left-down", "left", "left-up"]

  def slow_octo(direction, tiles)
    tiles.each_with_index do |tile, index|
      return index if tile == diretion
    end
  end

tiles_hash = {
  "up" => 0,
"right-up" => 1,
"right"=> 2,
"right-down" => 3,
"down" => 4,
"left-down" => 5,
"left" => 6,
"left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
