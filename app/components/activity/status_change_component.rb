class Activity::StatusChangeComponent < ViewComponent::Base
  def initialize(activity:)
    @activity = activity
  end
end
