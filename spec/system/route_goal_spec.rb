# frozen_string_literal: true

# TODO: Naming: route or trip?

describe 'route_goals', type: :system do
  let(:page) { NewRouteGoalPage.new }
  before do
    page.tap do |n|
      n.load
      n.from_field.set(Faker::Address.city)
      n.to_field.set(Faker::Address.city)
      n.departure_radio_button.choose(allow_label_click: true)
      n.date_field.set("01-01-2022")
      n.moment_field.set("avond")
    end
  end


  it 'creates a typical route correctly' do
    page.load
    page.create_route_goal_button.click

    expect(page).to have_content("Route goal was successfully created")
  end

  it 'selects aankomst correctly' do
    page.load
    page.arrival_radio_button.choose(allow_label_click: true)
    page.create_route_goal_button.click

    expect(page).to have_content('arrival')
    expect(page).to_not have_content('departure')
  end

  it 'selects vertrek correctly' do
    page.load
    page.departure_radio_button.choose(allow_label_click: true)
    page.create_route_goal_button.click

    expect(page).to have_content('departure')
    expect(page).to_not have_content('arrival')
  end
end
