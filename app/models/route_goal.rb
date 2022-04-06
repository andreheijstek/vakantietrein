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
class RouteGoal < ApplicationRecord
  def departure
    date_time_reference
  end

  def arrival
    !date_time_reference
  end

  def date_time_reference_value=(value)
    case value
    when :departure
      self.date_time_reference = true
    when :arrival
      self.date_time_reference = false
    else
      raise 'Only :departure or :arrival are allowed'
    end
  end

  # TODO: naar decorator?
  def date_time_reference_string
    date_time_reference ? 'departure' : 'arrival'
  end
end
