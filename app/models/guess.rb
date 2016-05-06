class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round

  validates :guess_name, presence: true
end
