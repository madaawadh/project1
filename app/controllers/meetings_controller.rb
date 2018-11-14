class MeetingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @meetings=Meeting.all
  end

  def show
    @meeting=Meeting.find_by(id:params[:id])
  end

  def new
    @meeting=Meeting.new
  end
  def create
    meeting=current_user.meetings.create(meeting_params)
    redirect_to meeting_path(meeting)
   end
  def edit
    @meeting=Meeting.find_by(id:params[:id])
 end
 def update
  @meeting=Meeting.find_by(id: params[:id])
  @meeting.update(meeting_params)
    redirect_to @meeting
 end
 def destroy
  meeting=Meeting.find_by(id: params[:id])
  meeting.destroy
  redirect_to tags_path
 end
   def meeting_params
    params.require(:meeting).permit(:titels,:dom,:tom,:max,current_user.id,:tag_id, :link)
  end
end
