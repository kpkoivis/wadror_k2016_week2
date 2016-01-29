module RatingAverage
  def average_rating
    "#{ self.ratings.average(:score).to_i}"
  end
end