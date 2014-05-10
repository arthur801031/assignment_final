class StaticPagesController < ApplicationController
  def home
  	if signed_in?
      @assignment  = current_user.assignments.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

end
