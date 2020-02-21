class Median
  def find_median_sorted_arrays(nums1, nums2)
    total_length = nums1.length + nums2.length
    median_index = total_length / 2

    if total_length.odd?
      odd_length_median(median_index, nums1, nums2)
    else
      even_length_median(median_index, nums1, nums2)
    end
  end

  def odd_length_median(median_index, nums1, nums2)
    current_index = 0

    loop do
      current_element = eject_next(nums1, nums2)
      return current_element.to_f if current_index == median_index

      current_index += 1
    end
  end

  def even_length_median(median_index, nums1, nums2)
    current_elements = [eject_next(nums1, nums2), eject_next(nums1, nums2)]
    return current_elements.sum / 2.0 if median_index == 1

    current_index = 2

    loop do
      current_elements.shift
      current_elements << eject_next(nums1, nums2)

      return current_elements.sum / 2.0 if current_index == median_index

      current_index += 1
    end
  end

  def eject_next(nums1, nums2)
    return nums1.shift if nums2.empty?
    return nums2.shift if nums1.empty?

    nums1.first < nums2.first ? nums1.shift : nums2.shift
  end
end