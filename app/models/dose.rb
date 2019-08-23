class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: { :scope => :ingredient }
  # validates :cocktail, uniqueness: true
  # validates :ingredient, uniqueness: true
  # validates_uniqueness_of :cocktail_id, :scope => :ingredient_id
  # validates :, :uniqueness => {:scope => [:recorded_at, :something_else]}
  # validates_uniqueness_of :teacher_id, :scopes => [:semester_id, :class_id]
end
