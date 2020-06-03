# frozen_string_literal: true

class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :training_users do |t|
      t.string 'name', limit: 100, null: false
      t.timestamp 'created_at', null: false
      t.timestamp 'updated_at', null: false
    end

    create_table :training_wallets do |t|
      t.references :training_users, foreign_key: true, null: false
      t.integer 'money'
      t.timestamp 'created_at', null: false
      t.timestamp 'updated_at', null: false
    end

    create_table :training_stores do |t|
      t.string 'name', limit: 100, null: false
      t.timestamp 'created_at', null: false
      t.timestamp 'updated_at', null: false
    end

    create_table :training_items do |t|
      t.references :training_stores, foreign_key: true, null: false
      t.string 'name', limit: 100, null: false
      t.integer 'price', null: false
      t.timestamp 'created_at', null: false
      t.timestamp 'updated_at', null: false
    end

    create_table :training_stocks do |t|
      t.references :training_items, foreign_key: true, null: false
      t.integer 'amount'
      t.timestamp 'created_at', null: false
      t.timestamp 'updated_at', null: false
    end
  end
end
