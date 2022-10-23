# frozen_string_literal: true

# Entity for a launch
class Launch < Entity
  attr_accessor :name,
                :patch,
                :liftoff,
                :vehiacle,
                :launchpad

  def description
    return 'Launch' unless liftoff.present? && liftoff.is_a?(DateTime)

    return 'Future Launch' if liftoff.future?
    return 'Past Launch' if liftoff.past?
  end
end
