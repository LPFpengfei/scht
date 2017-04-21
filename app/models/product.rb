# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string(191)
#  originprice       :string(191)
#  price             :string(191)
#  description       :string(191)
#  quantity          :string(191)
#  productcategoryid :string(191)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :product_category
  has_many :product_image
end
