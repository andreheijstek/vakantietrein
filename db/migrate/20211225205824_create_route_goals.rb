class CreateRouteGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :route_goals do |t|
      t.string :from
      t.string :to
      t.date :date
      t.string :moment

      t.timestamps
    end
  end
end
