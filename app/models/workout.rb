class Workout < ApplicationRecord
    has_many :exercises
    accepts_nested_attributes_for :exercises
end
