require 'diagonals'

# frozen_string_literal: true

RSpec.describe 'matrix tests' do
  describe "diagonals" do
    it "when principal diagonal is larger" do
      expect(diagonal([
        [2, 2, 2],
        [4, 2, 6],
        [1, 8, 2] ])).to eq("Principal Diagonal win!")
      expect(diagonal([
        [7, 2, 5, 8, 1, 5, 3],
        [4, 9, 6, 0, 5, 4, 4],
        [8, 4, 8, 5, 3, 7, 2],
        [3, 4, 3, 7, 6, 3, 7],
        [1, 4, 6, 1, 5, 4, 1],
        [0, 5, 8, 4, 4, 9, 6],
        [2, 3, 0, 2, 7, 3, 9]])).to eq("Principal Diagonal win!")
    end

    it "when secondary diagonal is larger" do
        expect(diagonal([
          [2, 2, 2],
          [4, 2, 6],
          [8, 8, 2] ])).to eq("Secondary Diagonal win!")
        expect(diagonal([
          [3, 1, 0, 3, 8, 8, 1, 7, 9, 1, 4, 6, 0, 0, 2, 4, 1, 0, 8, 4, 5, 2, 8],
          [6, 1, 0, 7, 1, 1, 7, 6, 3, 2, 3, 0, 5, 2, 8, 3, 8, 4, 8, 6, 3, 0, 4],
          [6, 7, 3, 4, 1, 1, 4, 5, 8, 9, 3, 2, 0, 6, 0, 3, 8, 5, 2, 7, 9, 2, 5],
          [4, 6, 1, 7, 0, 9, 2, 8, 1, 0, 3, 0, 7, 4, 6, 8, 9, 1, 2, 2, 5, 7, 6],
          [7, 4, 3, 4, 1, 6, 4, 7, 2, 3, 8, 3, 4, 2, 2, 3, 7, 3, 9, 3, 5, 6, 9],
          [6, 9, 0, 4, 7, 2, 3, 0, 9, 5, 8, 9, 1, 4, 1, 2, 5, 9, 9, 3, 7, 2, 1],
          [0, 9, 2, 0, 9, 4, 3, 3, 5, 6, 7, 0, 1, 7, 3, 2, 5, 2, 8, 3, 1, 1, 7],
          [8, 7, 8, 3, 8, 6, 1, 5, 1, 9, 6, 8, 9, 9, 4, 8, 0, 8, 6, 4, 4, 8, 4],
          [5, 3, 0, 8, 7, 4, 2, 1, 2, 7, 3, 2, 9, 6, 7, 2, 8, 0, 6, 9, 8, 9, 4],
          [6, 2, 3, 3, 7, 8, 9, 7, 7, 6, 5, 6, 4, 3, 6, 6, 5, 1, 2, 4, 7, 8, 5],
          [6, 4, 8, 3, 3, 2, 2, 2, 5, 9, 1, 2, 8, 5, 2, 0, 4, 3, 0, 7, 3, 6, 2],
          [4, 3, 9, 6, 4, 2, 4, 5, 2, 5, 9, 6, 6, 8, 1, 6, 9, 1, 8, 5, 1, 7, 3],
          [8, 0, 2, 2, 8, 0, 5, 8, 1, 5, 2, 6, 0, 3, 2, 4, 5, 0, 0, 3, 7, 0, 4],
          [3, 8, 6, 6, 3, 2, 6, 4, 7, 5, 0, 7, 5, 1, 6, 4, 1, 0, 6, 0, 4, 7, 7],
          [0, 5, 8, 3, 2, 7, 3, 1, 9, 9, 4, 8, 4, 2, 2, 3, 0, 5, 4, 8, 7, 0, 5],
          [0, 9, 0, 5, 5, 8, 2, 4, 4, 8, 2, 5, 3, 2, 2, 3, 3, 4, 3, 4, 2, 0, 0],
          [2, 7, 9, 9, 9, 7, 6, 3, 7, 1, 1, 9, 2, 1, 3, 5, 0, 2, 3, 1, 4, 5, 3],
          [6, 9, 5, 7, 1, 1, 4, 3, 5, 6, 1, 2, 0, 0, 9, 3, 5, 9, 8, 8, 8, 9, 8],
          [5, 8, 8, 1, 7, 2, 6, 9, 0, 7, 4, 3, 7, 9, 5, 9, 8, 0, 0, 4, 8, 2, 5],
          [5, 2, 7, 5, 3, 7, 7, 9, 4, 3, 1, 5, 5, 7, 9, 9, 8, 9, 1, 3, 8, 4, 5],
          [7, 6, 3, 0, 5, 3, 6, 0, 8, 3, 4, 3, 5, 1, 0, 5, 6, 1, 2, 8, 2, 9, 6],
          [3, 3, 2, 0, 6, 7, 9, 9, 8, 6, 2, 3, 1, 9, 2, 1, 5, 6, 9, 2, 3, 2, 9],
          [2, 9, 3, 6, 6, 4, 9, 8, 4, 5, 8, 7, 7, 9, 3, 8, 2, 7, 1, 6, 5, 0, 7]])).to eq("Secondary Diagonal win!")
    end

    it "When both diagoanl have the same size" do
      expect(diagonal([
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9] ])).to eq("Draw!")
      # expect(true).to eq(true)
    end
  end
end
