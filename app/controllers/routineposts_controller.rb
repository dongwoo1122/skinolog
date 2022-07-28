class RoutinepostsController < ApplicationController

  def index
  end

  def new
    @routinepost = Routinepost.new
  end

end
