# frozen_string_literal: true

# Actions for the base controller class
class ApplicationController < ActionController::Base
  def validate_account
    redirect_to root_path unless current_account&.admin?
  end
end
