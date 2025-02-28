module ApplicationHelper
  def component_for(activity)
    case activity
    when Comment then Activity::CommentComponent
    when StatusChange then Activity::StatusChangeComponent
    else
      raise ArgumentError, "Unknown activity type: #{activity.class}"
    end
  end

  def current_user
    @current_user ||= User.first || User.create(name: 'Test User')
  end
end
