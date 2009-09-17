require 'test_helper'

class FeepogramTest < Test::Unit::TestCase
  should "be tested much better than this" do
    require 'bloops'
    require 'feepogram'

    bloops = Bloops.new
    bloops.tempo = 320

    song = Feepogram.new(bloops) do
      sound :crunch, Bloops::NOISE do |s|
        s.punch = 0.5
      end

      sound :oooo, Bloops::SINE do |s|
        s.sustain = 2.0
      end

      sound :plink, Bloops::SQUARE do |s|
        s.punch = 1.0
      end

      def and_one
        phrase do
          oooo   " 1:c2 " * 8
          plink  " c d e f g a b + c - " * 4
        end
      end

      def and_two
        phrase do
          crunch " c2 4 c5 4 " * 8
          oooo   " 1:g2 " * 8
          plink  " c d e f g a b + c - " * 4
        end
      end

      2.times do
        and_one
        and_two
      end
    end

    song.play
  end
end
