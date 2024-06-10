# frozen_string_literal: true

class MonthComponent < ViewComponent::Base
  def initialize(month:)
    @month = month
  end

  strip_trailing_whitespace
end
