# == Schema Information
#
# Table name: product_images
#
#  id         :integer          not null, primary key
#  product_id :string(191)
#  file       :string(191)
#  position   :string(191)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductImage < ApplicationRecord
  mount_uploader :file, ProductImageUploader
  belongs_to :product
end
