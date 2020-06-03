# frozen_string_literal: true

class Training::Item < ApplicationRecord
  self.table_name_prefix = 'training_'

  belongs_to :store, foreign_key: :training_stores_id, class_name: 'Training::Store'
  has_one :stock, foreign_key: :training_items_id, class_name: 'Training::Stock', dependent: :destroy
end
