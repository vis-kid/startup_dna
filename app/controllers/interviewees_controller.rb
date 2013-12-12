class IntervieweesController < ApplicationController

	def index
		@interviewees = Interviewee.order('created_at desc').paging(params[:page]).per(7) 
	end
end
