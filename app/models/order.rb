# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  userId     :string(191)
#  amount     :string(191)
#  createdate :string(191)
#  paydata    :string(191)
#  canceldata :string(191)
#  province   :string(191)
#  city       :string(191)
#  county     :string(191)
#  address    :string(191)
#  name       :string(191)
#  phone      :string(191)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
end
