class ContractHistory < ApplicationRecord
  validates :company, presence: true
  validates :ampere,
    presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
