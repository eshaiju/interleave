# encoding: utf-8

require 'interleave'

describe Interleave do
  let(:array1) { %w[1 2 3 4 5 6 7] }
  let(:array2) { %w[a b c] }

  it 'interleave two arrays with first array as biggest' do
    expect(Interleave.create(array1, array2)).to eq ["1", "2", "a", "3", "4", "b", "5", "6", "c", "7"]
  end

  it 'interleave two arrays with seccond array as biggest' do
    expect(Interleave.create(array2, array1)).to eq ["1", "2", "a", "3", "4", "b", "5", "6", "c", "7"]
  end

  it 'interleave two arrays of same size' do
    a = %w[a b c]
    b = %w[1 2 3]
    expect(Interleave.create(a, b)).to eq ["a", "1", "b", "2", "c", "3"]
  end

  it 'interleave two arrays of same size with different order' do
    a = %w[a b c]
    b = %w[1 2 3]
    expect(Interleave.create(b, a)).to eq ["1", "a", "2", "b", "3", "c"]
  end
end
