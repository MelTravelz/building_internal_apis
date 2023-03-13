class Book < ApplicationRecord
  before_save { |book| book.popularity = calculate_pop }

  private
  def calculate_pop
    if number_sold > 5
      'high'
    else
      'low'
    end
  end
end
