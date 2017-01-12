class RoomsController < ApplicationController
  def index
    @rooms = Room.all

    # respond_to do |format|
    #   format.html
    #   format.json { render json: {
    #                                 room_0_image_url: @rooms[0].images.first.image_url,
    #                                 room_1_image_url: @rooms[1].images.first.image_url,
    #                                 room_2_image_url: @rooms[2].images.first.image_url
    #                               }
    #               }
    # end
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(room_params)
    redirect_to root_path
  end

  private
  def room_params
    params.require(:room).permit(:name, :detail, :image, :price, :room_type, :capacity, :bedroom_num, :bed_num, :city)
  end
end
