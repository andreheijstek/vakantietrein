# frozen_string_literal: true

# Main controller
class ApplicationController < ActionController::Base
  # These groups are equivalent:
  #
  #   render action: :new, locals: { item: x }
  #   render :new, locals: { item: x }
  #   locals :new, item: x
  #
  #   render locals: { item: x }
  #   locals item: x
  #
  # rubocop: disable Style/OptionalArguments
  def locals(action = nil, hash)
    render action: action, locals: hash
  end
  # rubocop: enable Style/OptionalArguments
end
