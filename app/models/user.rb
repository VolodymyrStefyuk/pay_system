class User < ApplicationRecord
validates :name,  presence: true, length: { minimum: 4 }
validates :password,  presence: true, confirmation: true, length: { in: 4..20 }
validates :accountNumber,  presence: true, length: { is: 16 },  numericality: { only_integer: true }
end
