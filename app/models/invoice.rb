class Invoice < ActiveRecord::Base
    validates :game_id, presence: true
    validates :customer_id, presence: true

    belongs_to :game
    belongs_to :customer
end
