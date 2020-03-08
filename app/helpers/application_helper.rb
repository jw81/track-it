# frozen_string_literal: true

# Appease Rubocop
module ApplicationHelper
  def simple_date_format(date)
    date.to_formatted_s(:long)
  end
end
