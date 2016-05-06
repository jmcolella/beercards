class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses



  def correct_guesses(card)
    @correct_answers = []
    @correct_answers.push(card)
    binding.pry

  end

  def correct_answers_return
    # binding.pry
    @correct_answers.length
  end

end
