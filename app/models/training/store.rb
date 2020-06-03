# frozen_string_literal: true

class Training::Store < ApplicationRecord
  self.table_name_prefix = 'training_'

  has_many :items, foreign_key: :training_stores_id, class_name: 'Training::Item', dependent: :destroy
end
