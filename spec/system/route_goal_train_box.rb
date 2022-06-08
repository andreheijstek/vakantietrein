# frozen_string_literal: true

describe 'route_goals', type: :system do
  let(:page) { NewRouteGoalPage.new }
  # before do
  #   @from_city = Faker::Address.city
  #   @to_city = Faker::Address.city
  #   page.load
  #   page.from_field.set(@from_city)
  #   page.to_field.set(@to_city)
  # end

  it 'shows the From city' do
    @from_city = Faker::Address.city
    @to_city = Faker::Address.city
    page.load
    page.from_field.set(@from_city)
    page.to_field.set(@to_city)
    page.create_route_goal_button.click
    save_and_open_page
    expect(page).to have_content(@from_city)
  end
end

