class Person < ActiveRecord::Base
    validates :name, presence: true,
                    length: {minimum: 1}
                    
    validates :weight, presence: true,
                    length: {minimum: 1}, numericality: {greater_than_or_equal_to: 0}
                    
    validates :height, presence: true,
                    length: {minimum: 1}, numericality: {greater_than_or_equal_to: 0}
                    
    validates :red, presence: true,
                    length: {minimum: 1}, numericality: {only_integer: true}, greater_than_or_equal_to: 0, less_than: 256
                    
    validates :green, presence: true,
                    length: {minimum: 1}, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 256}
                    
    validates :blue, presence: true,
                    length: {minimum: 1}, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 256}
                    
    validates :country, presence: true,
                    length: {minimum: 1}
                    
    validates :gender, presence: true,
                    length: {minimum: 1}
                    
    validates :age, presence: true,
                    length: {minimum: 1}, numericality: {only_integer: true, greater_than_or_equal_to: 0}
                    
    validates :language, presence: true,
                    length: {minimum: 1}
                    
end
