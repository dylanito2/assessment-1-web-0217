class Restaurant

  attr_reader :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
  end

  self.find_by_name(name)
    @@all.find do |rest|
      rest.name == name
    end
  end

  def self.all
    @@all
  end
end

  # Restaurant.all
  # Restaurant.find_by_name(name)
  # Restaurant#reviews
  # Restaurant#customers
    # should return all of the customers who have written reviews.
