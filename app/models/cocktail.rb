class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end

# Cocktail
#   has a name
#   name cannot be blank (FAILED - 1)
#   name is unique (FAILED - 2)
#   has many doses (FAILED - 3)
#   should destroy child doses when destroying self (FAILED - 4)
#   has many ingredients (FAILED - 5)

# Dose
#   has a description (FAILED - 6)
#   description cannot be blank (FAILED - 7)
#   belongs to a cocktail
#   belongs to an ingredient
#   cocktail cannot be blank (FAILED - 8)
#   ingredient cannot be blank (FAILED - 9)
#   is unique for a given cocktail/ingredient couple (FAILED - 10)

# Ingredient
#   has a name
#   name cannot be blank (FAILED - 11)
#   name is unique (FAILED - 12)
#   has many doses (FAILED - 13)
#   should not be able to destroy self if has dose children (FAILED - 14)
