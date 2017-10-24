class Customer < ActiveRecord::Base
    validates :last, presence: true
    validates :first, presence: true
    validates :address, presence: true
    validates :last, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :country, presence: true
    validates :zip, presence: true
    
    has_many :games, :through => :invoices
    has_many :invoices
end
