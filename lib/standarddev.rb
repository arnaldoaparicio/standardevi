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

  def second_power_deviations_sum
    second_power_deviations.sum
  end

  def sample_standard_deviation_denominator
    @data_set.count - 1
  end

  def standard_deviation
    closer = second_power_deviations_sum / sample_standard_deviation_denominator
    sample_standard_deviation = Math.sqrt(closer)

    sample_standard_deviation.round(2)
  end
end
