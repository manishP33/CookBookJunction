class Recipe < ApplicationRecord
  has_many :cookbooks
  has_many :bloggers, through: :cookbooks
end
