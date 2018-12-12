require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/show.rb'
require './lib/character.rb'
require 'pry'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end


  def test_show_exists
    assert_instance_of Show, @knight_rider
  end

  def test_knight_rider_is_accurate
    assert_equal "Knight Rider", @knight_rider.name
  end

  def test_knight_rider_creator_is_accurate
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_knight_rider_characters_exist
    @knight_rider.add_characters(@character)
    @knight_rider.add_characters(@character)

    assert_equal 2, @knight_rider.characters.count
  end

  def test_knight_rider_defines_characters
    @knight_rider.add_characters(@kitt)
    @knight_rider.add_characters(@michael_knight)
    @knight_rider.characters
    assert_equal [@kitt, @michael_knight], @knight_rider.characters
  end

  def test_total_salary_for_knight_rider
    @knight_rider.add_characters(@kitt)
    @knight_rider.add_characters(@michael_knight)
    assert_equal 2600000, @knight_rider.total_salary
  end
  # pry(main)> knight_rider.total_salary
  # # => 2600000
end
