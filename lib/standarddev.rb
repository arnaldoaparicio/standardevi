class StandardDev
  attr_reader :data_set

  def initialize(data_set)
    @data_set = data_set
  end

  def mean
    @data_set.sum.to_f / @data_set.count
  end

  def deviation_list
    deviations = []

    @data_set.each do |value|
      deviation = value - mean
      deviations << deviation
    end
    deviations
  end

  def second_power_deviations
    second_power_list = []

    deviation_list.each do |deviation|
      second_power = deviation * deviation
      second_power_list << second_power
    end
    second_power_list
  end

  def standard_deviation
    square_list_sum = square_list.sum

    closer = square_list_sum / (set.count - 1)
    final = Math.sqrt(closer)

    final.round(2)
  end
end
