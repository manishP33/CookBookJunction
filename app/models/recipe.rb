class Recipe < ApplicationRecord
  has_many :cookbooks
  has_many :recipe_bloggers, through: :cookbooks
end
