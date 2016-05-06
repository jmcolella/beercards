class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round

  validates :guess_name, presence: true


  @correct_answers = []

  def correct_guesses(card)
    @correct_answers << card
  end

  def correct_answers_return
    @correct_answers
  end

end
