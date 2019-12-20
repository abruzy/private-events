# frozen_string_literal: true

module EventsHelper
  def creator?(event)
    return true if current_user && event.creator.id == current_user.id

    false
  end

  def past?(event)
    return true if event.date < Date.today

    false
  end

  def future?(event)
    return true if event.date >= Date.today

    false
  end
end
