class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  def self.incorrect_cards(cards, round_id)
    cards.select do |card|
      card.guesses.where(correct: true, round_id: round_id).empty?
    end
  end

  def self.display_card(cards)
    return cards.shuffle.first
  end




end
