describe "route_goals", type: :system do
  # it 'creates correctly' do
  #   NewRouteGoalPage.new.tap do |n|
  #     n.load
  #     n.from_field.set(Faker::Address.city)
  #     n.to_field.set(Faker::Address.city)
  #     # n.vertrek_radio_button.choose("vertrek")
  #     n.date_field.set("01-01-2022")
  #     n.moment_field.set("avond")
  #     n.create_route_goal_button.click
  #   end
  #
  #   expect(page).to have_content("Route goal was successfully created")
  # end

  it "selects aankomst/vertrek correctly" do
    Capybara.default_driver = :selenium
    visit "/route_goals/new"
    element = page.find("#vertrek")
    ap element
    element.choose

    # NewRouteGoalPage.new.tap do |n|
    #   n.load
    #   n.from_field.set(Faker::Address.city)
    #   n.to_field.set(Faker::Address.city)
    #   n.vertrek_radio_button.choose("vertrek")
    #   n.date_field.set("01-01-2022")
    #   n.moment_field.set("avond")
    #   n.create_route_goal_button.click
    # end
    #
    # expect(page).to have_content("vertrek")
    # expect(page).to_not have_content("aankomst")
  end

  # it "selects aankomst/vertrek correctly" do
  #   NewRouteGoalPage.new.tap do |n|
  #     n.load
  #     n.from_field.set(Faker::Address.city)
  #     n.to_field.set(Faker::Address.city)
  #     n.aankomst_radio_button.choose("aankomst")
  #     n.date_field.set("01-01-2022")
  #     n.moment_field.set("avond")
  #     n.create_route_goal_button.click
  #   end

  #   expect(page).to have_content("aankomst")
  #   expect(page).to_not have_content("vertrek")
  # end
end
