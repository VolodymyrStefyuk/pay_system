class User < ApplicationRecord
validates :name,  presence: true, length: { minimum: 4,  message: 'minimum 4' }
validates :password,  presence: true, confirmation: true  , length: { in: 4..20, message: 'password length 4..20'}
validates :accountNumber,  presence: true, length: { is: 16 , message: 'incorrect bank account'},  numericality: { only_integer: true, message: 'incorrect bank account'}
end
