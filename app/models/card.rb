class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  # def self.display(x)
  #   self.find_by(id: x)
  #   p @cards.first
  # end




end
