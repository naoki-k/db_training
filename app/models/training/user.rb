# frozen_string_literal: true

class Training::User < ApplicationRecord
    self.table_name_prefix = 'training_'
    has_one :wallet, foreign_key: :training_users_id, class_name: 'Training::Wallet', dependent: :destroy

    def buy(item, amount)
        return "在庫が足りません" if item.stock.amount < amount
        return "お金が足りません" if (item.price * amount) > wallet.money

        sleep(10)
        wallet.money -= (item.price * amount)
        wallet.save
        item.stock.amount -= amount
        item.stock.save
        "購入しました"
    end
end
