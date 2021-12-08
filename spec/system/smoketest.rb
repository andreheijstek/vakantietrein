# frozen_string_literal: true
require_relative '../page_objects/home'
require 'rails_helper'

describe "Smoketest", type: :system do

  it 'should find a railway track' do
    HomePage.new.tap do |n|
      n.load
      n.from_field.set("Gouda")
      n.to_field.set("Aosta")
      n.find_route_button.click

      expect (n.routes.size).to eq(1)
    end
  end
end

