class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher

  has_one_attached :picture

  accepts_nested_attributes_for :author
  accepts_nested_attributes_for :publisher
end
