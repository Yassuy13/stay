class Stay < ApplicationRecord
    def self.search(search)
        if search
            where(['username LIKE ?', "%#{search}%"])
        else
            all
        end
    end
    
    has_many :users
end
