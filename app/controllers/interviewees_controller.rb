class IntervieweesController < ApplicationController

	def index
    @interviewees = Interviewee.all
	end
end
