class StandardDev
  def initialize
    @data_set = []
  end

  def standard_deviation(set)
    sum_of_set = set.sum
    mean = sum_of_set.to_f / set.count
    deviation_list = []
    square_list = []

    set.each do |s|
      deviation = s - mean
      deviation_list << deviation
    end
    deviation_list.each do |deviation|
      square = deviation * deviation
      square_list << square
    end
    square_list_sum = square_list.sum

    closer = square_list_sum / (set.count - 1)
    final = Math.sqrt(closer)

    final.round(2)
  end
end
