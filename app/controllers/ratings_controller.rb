
class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end
end

# GET /ratings/new
def new
  @rating = Raiting.new
end