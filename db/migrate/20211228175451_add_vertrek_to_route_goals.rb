# frozen_string_literal: true

class AddVertrekToRouteGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :route_goals, :vertrek, :boolean
  end
end
