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

  def squared_deviations
    squared_deviations_list = []

    deviation_list.each do |deviation|
      squared_deviation = deviation * deviation
      squared_deviations_list << squared_deviation
    end
    squared_deviations_list
  end

  def squared_deviations_sum
    squared_deviations.sum
  end

  def sample_standard_deviation_denominator
    @data_set.count - 1
  end

  def sample_variance
    squared_deviations_sum / sample_standard_deviation_denominator
  end

  def sample_standard_deviation
    ssd = Math.sqrt(sample_variance)

    ssd.round(2)
  end
end
