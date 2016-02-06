class Person < ActiveRecord::Base
    validates :name, presence: true,
                    length: { minimum: 1 }
                    
    validates :weight, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: true}
                    
    validates :height, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: true}
                    
    validates :red, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: {only_integer: true}}
                    
    validates :green, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: {only_integer: true}}
                    
    validates :blue, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: {only_integer: true}}
                    
    validates :country, presence: true,
                    length: {minimum: 1, maximum: 5}
                    
    validates :gender, presence: true,
                    length: {minimum: 1}
                    
    validates :age, presence: true,
                    length: {minimum: 1, maximum: 5, numericality: {only_integer: true}}
                    
    validates :language, presence: true,
                    length: {minimum: 1}
                    
end
