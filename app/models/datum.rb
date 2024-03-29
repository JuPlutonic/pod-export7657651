# frozen_string_literal: true

# == Schema Information
#
# Table name: data
#
#  id         :bigint           not null, primary key
#  author     :string
#  converted  :boolean
#  date       :date
#  gov_code   :string
#  mime       :string
#  source     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_data_on_gov_code  (gov_code)
#
class Datum < ApplicationRecord
  with_options dependent: :destroy do
    belongs_to :pod, foreign_key: :gov_code, inverse_of: :data
    has_one :json_dataset
  end

  validates :gov_code, presence: true
end
