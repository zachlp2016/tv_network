require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/show.rb'
require './lib/character.rb'
require './lib/network.rb'
require 'pry'

class NetworkTest < Minitest::Test

  def setup
    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @nbc = Network.new("NBC")
  end

  def test_show_exists
    assert_instance_of Network, @nbc
  end

  def test_network_has_a_name
    assert_equal "NBC", @nbc.name
  end

  def test_network_has_shows_is_empty
    assert_equal [], @nbc.shows
  end

  def test_you_can_add_shows
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_you_can_find_highest_paid_salary
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal "Amy Poehler", @nbc.highest_paid_actor
  # pry(main)> nbc.highest_paid_actor
  # # => "Amy Poehler"
  end
end
