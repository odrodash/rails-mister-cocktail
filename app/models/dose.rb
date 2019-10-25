class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, presence: true
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "only allows letters" }

end
