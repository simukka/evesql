class CreateStaOperationservices < ActiveRecord::Migration
  def change
    create_table "staOperationServices", :id => false, :force => true do |t|
      t.integer "operationID", :null => false
      t.integer "serviceID",   :null => false
      t.timestamps
    end
  end
end
