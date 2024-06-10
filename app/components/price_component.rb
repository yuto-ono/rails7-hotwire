# frozen_string_literal: true

class PriceComponent < ViewComponent::Base
  def initialize(price:)
    @price = price
  end

  strip_trailing_whitespace
end
