class Guess < ActiveRecord::Base

  attr_accessor :correct_answers

  belongs_to :card
  belongs_to :round

  validates :guess_name, presence: true




end
