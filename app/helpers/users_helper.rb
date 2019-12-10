# frozen_string_literal: true

module UsersHelper
  def applied?(event)
    ids = event.attendees.pluck(:id)
    if ids && current_user
      return true if ids.include?(current_user.id)
    end
    false
  end
end
