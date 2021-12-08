# frozen_string_literal: true

require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there' # Optional but needed to perform more complex matching

class HomePage < SitePrism::Page
  set_url "localhost:3000/"

  element :from_field, "#from_field"
  element :to_field, "#to_field"

  element :find_route_button, "#find_route_button"

  elements :routes, "ul#routes li"
end
