class Recipe < ApplicationRecord
  has_many :cookbooks
  has_many :recipebloggers, through: :cookbooks
end
