class AddActiveToMerchant < ActiveRecord::Migration[5.1]
  def change
    add_column :merchants, :active?, :boolean, default: true
  end
end
