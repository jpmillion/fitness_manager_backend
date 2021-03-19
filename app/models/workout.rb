class Workout < ApplicationRecord
    belongs_to :athlete
    has_many :exercises, dependent: :nullify
    accepts_nested_attributes_for :exercises

    validates :name, uniqueness: true
end
