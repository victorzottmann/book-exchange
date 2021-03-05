class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher
  has_and_belongs_to_many :category
  has_and_belongs_to_many :subcategory

  has_one_attached :picture

  accepts_nested_attributes_for :author
  accepts_nested_attributes_for :publisher

  before_save :remove_whitespace

  private

    def remove_whitespace
      self.title = self.title.strip
    end
end

