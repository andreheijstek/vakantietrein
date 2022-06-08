# frozen_string_literal: true

describe 'route_goals', type: :system do
  let(:page) { NewRouteGoalPage.new }
  let(:from_city) { Faker::Address.city }
  let(:to_city) {Faker::Address.city }
  before do
    page.load
    page.from_field.set(@from_city)
    page.to_field.set(@to_city)
  end

  it 'shows the box' do
    page.load
    page.create_route_goal_button.click
    box = find(:id, "main_box")
    expect(box.tag_name).to eq('rect')
  end
end

