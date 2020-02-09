# frozen_string_literal: true

# Appease Rubocop
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
