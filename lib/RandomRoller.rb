# frozen_string_literal: true

require_relative "RandomRoller/version"

module RandomRoller
  class Error < StandardError; end

  class Coin
    def flip
      outcomes = { 0 => "heads", 1 => "tails" }
      return outcomes[Random.new.rand(0..1)]
    end
  end

  class PlayingCard
    def initialize
      @deck = { 0 => "Ace of Clubs", 1 => "2 of Clubs", 2 => "3 of Clubs", 3 => "4 of Clubs", 4 => "5 of Clubs", 5 => "6 of Clubs", 6 => "7 of Clubs", 7 => "8 of Clubs", 8 => "9 of Clubs", 9 => "10 of Clubs", 10 => "Jack of Clubs", 11 => "Queen of Clubs", 12 => "King of Clubs", 13 => "Ace of Spades", 14 => "2 of Spades", 15 => "3 of Spades", 16 => "4 of Spades", 17 => "5 of Spades", 18 => "6 of Spades", 19 => "7 of Spades", 20 => "8 of Spades", 21 => "9 of Spades", 22 => "10 of Spades", 23 => "Jack of Spades", 24 => "Queen of Spades", 25 => "King of Spades", 26 => "Ace of Hearts", 27 => "2 of Hearts", 28 => "3 of Hearts", 29 => "4 of Hearts", 30 => "5 of Hearts", 31 => "6 of Hearts", 32 => "7 of Hearts", 33 => "8 of Hearts", 34 => "9 of Hearts", 35 => "10 of Hearts", 36 => "Jack of Hearts", 37 => "Queen of Hearts", 38 => "King of Hearts", 39 => "Ace of Diamonds", 40 => "2 of Diamonds", 41 => "3 of Diamonds", 42 => "4 of Diamonds", 43 => "5 of Diamonds", 44 => "6 of Diamonds", 45 => "7 of Diamonds", 46 => "8 of Diamonds", 47 => "9 of Diamonds", 48 => "10 of Diamonds", 49 => "Jack of Diamonds", 50 => "Queen of Diamonds", 51 => "King of Diamonds" }
    end

    def draw
      @deck[Random.new.rand(0..51)]
    end
  end

  class Dice
    def roll(number_of_dice)
      roll_results = []
      number_of_dice.times do
        roll_results << Random.new.rand(1..6)
      end
      return roll_results
    end
  end

  class Lotto
    def pick(numbers_to_pick, maximum_number)
      lotto_numbers = []
      numbers_to_pick.times do
        lotto_numbers << Random.new.rand(1..maximum_number)
      end
      return lotto_numbers
    end
  end
end
