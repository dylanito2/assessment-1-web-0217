class Customer

  attr_reader :name, :reviews, :restaurants
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @restaurants = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |cust|
      cust.name == name
    end
  end

  def add_review(review, rest)
    self.reviews << review
    self.resturants << resturant
    restaurant = Restaurant.find_by_name(rest.name)
    restaurant.reviews << review
    restaurant.customers << self
  end

end


# Customer.all
# Customer.find_by_name(name)
# Customer#add_review
# Customer#add_restaurant
# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
