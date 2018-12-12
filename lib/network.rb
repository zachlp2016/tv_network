class Network

  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end


  def add_show(show)
    @shows << show
  end


  def highest_paid_actor
    @shows.each do |show|
      binding.pry
    end
  end
end
