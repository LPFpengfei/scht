# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  nickname   :string(191)
#  mobile     :string(191)
#  password   :string(191)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
end
