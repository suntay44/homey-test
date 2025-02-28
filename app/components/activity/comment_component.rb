class Activity::CommentComponent < ViewComponent::Base
  def initialize(activity:)
    @activity = activity
  end
end
