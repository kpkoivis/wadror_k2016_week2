class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user

  validates :name, presence: true



  def average
    return 0 if ratings.empty?
    ratings.map{ |r| r.score }.sum / ratings.count.to_f
  end



  def average_rating
    "#{ self.ratings.average(:score).to_i}"
  end

  def to_s
    "#{ self.brewery.name} : #{ self.name}"
  end
end
