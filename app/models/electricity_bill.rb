class ElectricityBill < ApplicationRecord
  validates :month, presence: true
  validates :amount,
    presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def month=(value)
    if value.present?
      self[:month] = "#{value}-01"
    end
  end
end
