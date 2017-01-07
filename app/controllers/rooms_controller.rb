class RoomsController < ApplicationController
  def index
    @rooms = Room.page(params[:page]).per(3)
    # @exes = Experience.all
    respond_to do |format|
      format.html
      format.json { render json: {
                                    room_0_image_url: @rooms[0].images.first.image_url,
                                    room_1_image_url: @rooms[1].images.first.image_url,
                                    room_2_image_url: @rooms[2].images.first.image_url
                                  }
                  }
    end
  end
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: {
                                    latitude: @room.latitude,
                                    longitude: @room.longitude
                                  }
                  }
    end

  end

end
