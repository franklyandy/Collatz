class Collatz
  def self.find_longest_chain(maximum)
    maximum.times.map { |n| n + 1 }.reduce { |memo, n|
      current_value = calculate_chain(n).length
      calculate_chain(memo).length > current_value ? memo : n
    }
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
