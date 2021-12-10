class Program < ApplicationRecord
  has_many :discount_rules, inverse_of: :program
  has_many :upc_lists, through: :discount_rules
  accepts_nested_attributes_for :discount_rules, allow_destroy: true, reject_if: :all_blank
end
