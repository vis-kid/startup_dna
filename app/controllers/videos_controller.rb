class VideosController < ApplicationController

  def index
    @videos = Video.order('created_at desc').paging(params[:page]).per(15)
  end
end
