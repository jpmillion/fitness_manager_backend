class Workout < ApplicationRecord
    belongs_to :athlete
    #has_many :exercises, dependent: :nullify
    accepts_nested_attributes_for :exercises

    validates :name, presence: true
    validates :name, uniqueness: { scope: :athlete }
    validates :exercises, length: { in: 1..6, message: "Required to Choose Between 1 and 6 Exercises" }
end
