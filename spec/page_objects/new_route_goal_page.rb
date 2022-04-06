# frozen_string_literal: true

require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there' # Optional but needed to perform more complex matching

# Page object for route_goals/new page
class NewRouteGoalPage < SitePrism::Page
  set_url "/route_goals/new"

  element :from_field, "#route_goal_from"
  element :to_field, "#route_goal_to"
  element :aankomst_vertrek_radio_button, :radio_button, 'Vertrek'
  element :date_field, "#route_goal_date"
  element :moment_field, "#route_goal_moment"

  element :create_route_goal_button, "#submit_route_goal"
  element :back_to_route_goals_button, "#back_to_route_goals"

end
