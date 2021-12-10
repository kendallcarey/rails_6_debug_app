class DiscountRule < ApplicationRecord
  belongs_to :program, inverse_of: :discount_rules
  has_many :upc_lists
  accepts_nested_attributes_for :upc_lists, allow_destroy: true, reject_if: :all_blank
end
