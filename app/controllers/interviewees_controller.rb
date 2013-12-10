class IntervieweesController < ApplicationController

	def index
		@interviewees = Interviewee.order('created_at desc').paging(params[:page]).per(15) 
	end
end
