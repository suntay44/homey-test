class StatusChangesController < ApplicationController
  before_action :set_project

  def create
    user = User.find(params[:user_id])

    if params[:new_status] == @project.status
      redirect_to project_path(@project), alert: "Status unchanged"
      return
    end

    @status_change = @project.status_changes.build(
      user: user,
      old_status: @project.status,
      new_status: params[:new_status]
    )

    @status_change.save ? update_project_status : redirect_with_alert
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def update_project_status
    @project.update!(status: params[:new_status])
    redirect_with_notice
  end
end