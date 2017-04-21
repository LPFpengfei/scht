# == Schema Information
#
# Table name: order_items
#
#  id              :integer          not null, primary key
#  orderId         :string(191)
#  productId       :string(191)
#  productName     :string(191)
#  productQuantity :string(191)
#  productprice    :string(191)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class OrderItem < ApplicationRecord
end
