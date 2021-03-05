class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher
  has_and_belongs_to_many :category
  has_and_belongs_to_many :subcategory

  accepts_nested_attributes_for :author
  accepts_nested_attributes_for :publisher
end
