require './lib/array_rotation'
require './lib/array_rotation_optimized'

describe 'array_rotation' do
  
  it 'returns [3 4 5 1 2] if array [1 2 3 4 5] is rotated 2 times' do
    expect(left_rotate_array([1,2, 3, 4, 5], 2, 5)).to eq [3, 4, 5, 1, 2]
  end

  it 'returns [3 4 5 1 2] if array [1 2 3 4 5] is rotated 2 times' do
    expect(left_rotate_array_optimized([1,2, 3, 4, 5], 2, 5)).to eq [3, 4, 5, 1, 2]
  end

end