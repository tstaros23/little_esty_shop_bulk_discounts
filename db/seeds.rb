InvoiceItem.destroy_all
Discount.destroy_all
Merchant.destroy_all
Customer.destroy_all
Item.destroy_all
Invoice.destroy_all

merchant1 = Merchant.create!(name: 'Hair Care')
merchant2 = Merchant.create!(name: 'Target')

discount = Discount.create!(quantity_threshold: 7, percentage_discount: 15, merchant_id: merchant1.id)
discount2 = Discount.create!(quantity_threshold: 10, percentage_discount: 30, merchant_id: merchant1.id)
discount3 = Discount.create!(quantity_threshold: 15, percentage_discount: 25, merchant_id: merchant1.id)

customer_1 = Customer.create!(first_name: 'Joey', last_name: 'Smith')

invoice_A = Invoice.create!(customer_id: customer_1.id, status: 2, created_at: "2012-03-27 14:54:09")

item_A = Item.create!(name: "Shampoo", description: "This washes your hair", unit_price: 10, merchant_id: merchant1.id, status: 1)
ii_A = InvoiceItem.create!(invoice_id: invoice_A.id, item_id: item_A.id, quantity: 12, unit_price: 10, status: 2)
#84
item_B = Item.create!(name: "Comb", description: "This cleans your hair", unit_price: 10, merchant_id: merchant1.id, status: 1)
ii_B = InvoiceItem.create!(invoice_id: invoice_A.id, item_id: item_B.id, quantity: 5, unit_price: 10, status: 2)
#50
item_C = Item.create!(name: "Broom", description: "This cleans your house", unit_price: 10, merchant_id: merchant1.id, status: 1)
ii_C = InvoiceItem.create!(invoice_id: invoice_A.id, item_id: item_C.id, quantity: 15, unit_price: 10, status: 2)
#105
item_D = Item.create!(name: "Mop", description: "This cleans your floor", unit_price: 10, merchant_id: merchant2.id, status: 1)
ii_D = InvoiceItem.create!(invoice_id: invoice_A.id, item_id: item_D.id, quantity: 20, unit_price: 10, status: 2)
