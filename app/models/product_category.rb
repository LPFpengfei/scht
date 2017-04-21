# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  name       :string(191)
#  comment    :string(191)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ApplicationRecord
  has_many :products
end
