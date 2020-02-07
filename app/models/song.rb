class Song < ActiveRecord::Base
  # add associations here
    belongs_to :artist 
    belongs_to :genre
    has_many :notes
<<<<<<< HEAD
    accepts_nested_attributes_for :notes
    def artist_name=(name)
        self.artist = Artist.find_or_create(name: name)
    end
    def artist_name
       if self.artist 
         self.artist.name
       else 
         nil 
       end
    end
=======
>>>>>>> 070e4436601b3f83fb329495db4e4e78e5ff77a7
end
