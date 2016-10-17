class Cookbook < ApplicationRecord
  belongs_to :blogger
  belongs_to :recipe
end
