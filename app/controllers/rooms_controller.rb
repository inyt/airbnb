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
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
      redirect_to root_path, notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_room_path, notice: "リスティングを作成・保存出来ませんでした"
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to root_path, notice: "リスティングを編集しました"
    else
      redirect_to new_room_path, notice: "リスティングを作成・保存出来ませんでした"
    end
  end


  def search
    @latitude = params[:lat]
    @longitude = params[:lng]
  end

  private
  def room_params
    params.require(:room).permit(:name, :detail, :image, :price, :room_type, :capacity, :bedroom_num, :bed_num, :address)
  end
end
