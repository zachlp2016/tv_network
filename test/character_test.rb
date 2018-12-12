require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character.rb'
require 'pry'

class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_character_exists
    assert_instance_of Character, @kitt
  end

  def test_character_has_name
    assert_equal "KITT", @kitt.name
  end

  def test_character_has_salary
    assert_equal 1_000_000, @kitt.salary
  end

  def test_character_has_a_name
    assert_equal "William Daniels", @kitt.actor
  end

end
