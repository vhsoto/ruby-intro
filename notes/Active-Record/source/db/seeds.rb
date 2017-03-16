# Code to populate the database ...

product_details = { :barcode    => "AR-23414324",
                   :quantity => 10,
                   :name     => 'TV',
                   :store_id => 1}

store_details = { :name    => "Kiwi Mart",
                  :manager_id => 1 }

manager_details = { :name    => "Juan"}


Product.create!(product_details)
Store.create!(store_details)
Manager.create!(manager_details)
