class Review
  attr_reader :review_text, :customer, :restaurant
  @@all = []

  def initialize(review_text, customer, restaurant)
    @review_text = review_text
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end
end

# Review.all
# Review#customer
# Review#restaurant
