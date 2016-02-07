class BeerClub < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships

  def to_s
    self.name
  end
end
