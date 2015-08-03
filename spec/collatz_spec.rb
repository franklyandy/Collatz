require 'collatz'

describe Collatz do
  describe '.calculate_chain' do
    When(:result) { Collatz.calculate_chain(13) }
    Then { result == [13, 40, 20, 10, 5, 16, 8, 4, 2, 1] }
  end

  describe '.find_longest_chain' do
    When(:result) { Collatz.find_longest_chain(5) }
    Then { result == 3 }
  end
end
