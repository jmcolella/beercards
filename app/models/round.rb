class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def empty_guesses
    self.guesses.empty?
  end

  def guess_value
    self.guesses.last.correct == true
  end




end
