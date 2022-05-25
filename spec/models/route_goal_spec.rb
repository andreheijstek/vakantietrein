# frozen_string_literal: true

# == Schema Information
#
# Table name: route_goals
#
#  id                  :bigint           not null, primary key
#  date                :date
#  date_time_reference :boolean
#  from                :string
#  moment              :string
#  to                  :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'rails_helper'

RSpec.describe RouteGoal, type: :model do
  it 'knows the reference for date and time' do
    route = RouteGoal.new(from: 'Gouda', to: 'Aosta', moment: 'evening')
    route.date_time_reference_value = :departure
  end

  # it "does not allow wrong values for date_time_reference" do
  #   route = RouteGoal.new(from: "Gouda", to: "Aosta", moment: "evening")
  #
  #   expect(route.date_time_reference_value = :something).to raise_error
  # end
end
