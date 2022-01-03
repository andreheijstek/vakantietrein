describe "route_goals", type: :system do
  it 'creates correctly' do
    NewRouteGoalPage.new.tap do |n|
      n.load
      n.from_field.set(Faker::Address.city)
      n.to_field.set(Faker::Address.city)
      # n.vertrek_aankomst_radio_button.choose("vertrek")
      n.date_field.set("01-01-2022")
      n.moment_field.set("avond")
      n.create_route_goal_button.click
    end

    expect(page).to have_content("Route goal was successfully created")
  end
end
