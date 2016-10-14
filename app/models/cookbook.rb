class Cookbook < ApplicationRecord
  belongs_to :recipe_blogger
  belongs_to :recipe
end
