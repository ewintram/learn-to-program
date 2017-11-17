# Recursive shuffle
class Array

  def recursive_shuffle
    unshuffled_array = self
    shuffled_array = []
    while unshuffled_array.length > 0
      rand_index = rand(unshuffled_array.length)

      curr_index = 0
      new_array = []

      unshuffled_array.each do |item|
        if curr_index == rand_index
          shuffled_array << item
        else
          new_array << item
        end

        curr_index += 1
      end

      unshuffled_array = new_array
    end

    shuffled_array
  end
end
