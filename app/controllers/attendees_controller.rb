class AttendeesController < ApplicationController
  # def new
  #   # @meeting= params[id: :meeting_id]
  #   @attendee= Attendee.new
  # end
  # def create
  #   attendee=Attendee.create(attendee_params)
  #   # redirect_to meeting_path(attendee)
  #  end

   def join
    attendee=Attendee.create(join_params)
    redirect_to request.referer
   end

   def join_params
    params.permit(:meeting_id).merge(user_id: current_user.id)
   end

  
end
