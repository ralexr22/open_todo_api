class Api::ItemsController < ApiController
  before_action :authenticated?


  def create
    list = List.find(params[:list_id])
    item = Item.new(item_params)
    item.list = list

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    begin
      item = Item.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found and return
    end

    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_message }, status: :unprocessable_entity
    end
  end


  private
  def item_params
    params.require(:item).permit(:description, :completed)
  end
end
