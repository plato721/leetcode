require './median.rb'

describe Median do
  let(:median){ described_class.new }

  it 'calculates for single element' do
    nums1 = []
    nums2 = [3]

    result = median.find_median_sorted_arrays(nums1, nums2)

    expect(result).to be_within(0.0001).of(3.0)
  end

  it 'calculates for two elements' do
    nums1 = []
    nums2 = [3, 4]

    result = median.find_median_sorted_arrays(nums1, nums2)

    expect(result).to be_within(0.0001).of(3.5)
  end

  it 'calculates for three elements' do
    nums1 = [5]
    nums2 = [4, 6]

    result = median.find_median_sorted_arrays(nums1, nums2)

    expect(result).to be_within(0.0001).of(5.0)
  end

  it 'caclulates for four elements' do
    nums1 = [1, 3]
    nums2 = [2, 4]

    result = median.find_median_sorted_arrays(nums1, nums2)

    expect(result).to be_within(0.0001).of(2.5)
  end
end
