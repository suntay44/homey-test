class CommentsController < ApplicationController
  before_action :set_project

  def create
    user = User.find(params[:user_id])
    @comment = @project.comments.build(comment_params.merge(user: user))
    if @comment.save
      redirect_to project_path(@project), notice: 'Comment added successfully'
    else
      redirect_to project_path(@project), alert: 'Failed to add comment'
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
