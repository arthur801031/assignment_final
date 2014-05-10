class StaticPagesController < ApplicationController
  def home
  	@assignment = current_user.assignments.build if signed_in?
  end

  def help
  end

  def about
  end

end
