class RoomsController < ApplicationController
  def show
    @room = Room.first
  end
end
