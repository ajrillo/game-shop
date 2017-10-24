class Game < ActiveRecord::Base
    validates :name, presence: true
    validates :info, presence: true
    validates :linkToGame, presence: true
    
    has_many :invoices
    has_one :date, class_name: Invoice
    has_one :price
    has_many :customers, :through => :invoices
end
