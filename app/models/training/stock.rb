# frozen_string_literal: true

class Training::Stock < ApplicationRecord
  self.table_name_prefix = 'training_'

  belongs_to :item, foreign_key: :training_items_id, class_name: 'Training::Item'
end
