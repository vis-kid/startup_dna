class IntervieweesController < ApplicationController

  def index
    @interviewees = Interviewee.order('created_at desc').paging(params[:page]).per(7) 
	end

  def new
    @interviewee = Interviewee.new
	end

  def create
    @interviewee = Interviewee.create(interviewee_params)
    redirect_to interviewees_path
	end

  private

  def interviewee_params 
    params.require(:interviewee).permit(:name, :about_text, :twitter_handle, :weblink, :user_pic)
	end
end
