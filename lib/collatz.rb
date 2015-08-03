class Collatz
  def self.find_longest_chain(maximum)
    result = maximum.times.map { |n| n + 1 }.reduce({}){ |memo, n|
      current_value = calculate_chain(n).length
      (memo[:chain_length] || 0) > current_value ?
        memo :
        { number: n, chain_length: current_value }
    }
    result[:number]
  end

  def self.calculate_chain(seed)
    current_number = seed
    results = []
    while current_number != 1
      results << current_number
      current_number = calculate(current_number)
    end
    results << 1
    results
  end

  private
    def self.calculate(number)
      number.even? ? number / 2 : (number * 3) + 1
    end
end
