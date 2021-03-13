class Workout < ApplicationRecord
    has_many :exercises, dependent: :nullify
    accepts_nested_attributes_for :exercises
end
