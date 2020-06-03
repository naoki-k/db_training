# frozen_string_literal: true

class Training::Wallet < ApplicationRecord
  self.table_name_prefix = 'training_'
  belongs_to :user, foreign_key: :training_users_id, class_name: 'Training::User'
end
