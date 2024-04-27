class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :author
  has_many :quote_categories
  has_many :categories, through: :quote_categories, dependent: :destroy
  accepts_nested_attributes_for :quote_categories, reject_if: :all_blank, allow_destroy: true
end
