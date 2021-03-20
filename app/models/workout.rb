class Workout < ApplicationRecord
    belongs_to :athlete
    has_many :exercises, dependent: :nullify
    accepts_nested_attributes_for :exercises

    validates :name, presence: true
    validates :name, uniqueness: { scope: :athlete }
end
