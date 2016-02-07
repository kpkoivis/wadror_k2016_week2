class User < ActiveRecord::Base
  include RatingAverage
  has_many :ratings
  has_many :memberships

  validates :username, uniqueness: true,
            length: { minimum: 3, maximum: 15}

  def to_s
    self.username
  end

end
