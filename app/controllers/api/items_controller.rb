class Api::ItemsController < ApiController
  before_action :authenticated?
  

  def create
    list = List.find(params[:list_id])
    item = Item.new(item_params)

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:description)
  end
end
