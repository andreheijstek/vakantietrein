describe 'route_goals', type: :system do
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

  # it 'selects aankomst correctly' do
  #   Capybara.default_driver = :selenium
  #   visit '/route_goals/new'
  #   choose('aankomst', allow_label_click: true)
  #
  #   NewRouteGoalPage.new.tap do |n|
  #     n.load
  #     n.from_field.set(Faker::Address.city)
  #     n.to_field.set(Faker::Address.city)
  #     # n.aankomst_vertrek_radio_button.choose
  #     n.date_field.set('01-01-2022')
  #     n.moment_field.set('avond')
  #     n.create_route_goal_button.click
  #   end
  #
  #   expect(page).to have_content('arrival')
  #   expect(page).to_not have_content('departure')
  # end

  it 'selects vertrek correctly' do
    Capybara.default_driver = :selenium
    visit '/route_goals/new'
    choose('vertrek')
    expect(find_field("departure")).to be_checked

    NewRouteGoalPage.new.tap do |n|
      # n.load
      n.from_field.set(Faker::Address.city)
      n.to_field.set(Faker::Address.city)
      # n.aankomst_vertrek_radio_button.choose
      n.date_field.set('01-01-2022')
      n.moment_field.set('avond')
      n.create_route_goal_button.click
    end

    save_and_open_page
    expect(page).to have_content('departure')
    expect(page).to_not have_content('arrival')
  end

  it "selects aankomst/vertrek correctly" do
    Capybara.default_driver = :selenium
    visit '/route_goals/new'
    choose('aankomst')
    expect(find_field("arrival")).to be_checked

    NewRouteGoalPage.new.tap do |n|
      n.load
      n.from_field.set(Faker::Address.city)
      n.to_field.set(Faker::Address.city)
      # n.aankomst_radio_button.choose("aankomst")
      n.date_field.set("01-01-2022")
      n.moment_field.set("avond")
      n.create_route_goal_button.click
    end

    save_and_open_page

    expect(page).to have_content("arrival")
    expect(page).to_not have_content("departure")
  end
end
