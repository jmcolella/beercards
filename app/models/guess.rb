class Guess < ActiveRecord::Base

  attr_accessor :correct_answers

  belongs_to :card
  belongs_to :round

  validates :guess_name, presence: true


def check_correctness

  if self.guess_name.downcase == self.card.answer.downcase
      self.update_attributes(correct: true)
  else
      self.correct
  end
end



end
