require 'collatz'

describe Collatz do
  describe '.calculate_chain' do
    When(:result) { Collatz.calculate_chain(13) }
    Then { result == [13, 40, 20, 10, 5, 16, 8, 4, 2, 1] }
  end
end
