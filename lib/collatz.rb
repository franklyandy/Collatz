class Collatz
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
