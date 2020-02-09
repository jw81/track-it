# frozen_string_literal: true

# Appease Rubocop
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
