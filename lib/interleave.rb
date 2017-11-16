class Interleave
  def self.create(array1, array2)
    if array1.count >= array2.count
      slice_array(array1, array2)
    else
      slice_array(array2, array1)
    end
  end

  def self.slice_array(array1, array2)
    interleave_interval = array1.count / array2.count
    array1.each_slice(interleave_interval).zip(array2).flatten.compact
  end
end
