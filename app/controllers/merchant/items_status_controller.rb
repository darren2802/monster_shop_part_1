class Merchant::ItemsStatusController < Merchant::BaseController
  def update
    item = Item.find(params[:id])

    if params[:status] == 'deactivate'
      deactivate(item)
    elsif params[:status] == 'activate'
      activate(item)
    end

    redirect_back fallback_location: '/merchant/items'
  end

  private

  def deactivate(item)
    item.update(active?: false)
    flash[:happy] = 'Item Deactivated'
  end

  def activate(item)
    item.update(active?: true)
    flash[:happy] = 'Item Activated'
  end
end
