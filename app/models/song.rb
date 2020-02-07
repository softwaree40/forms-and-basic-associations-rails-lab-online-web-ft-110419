class Song < ActiveRecord::Base
  # add associations here
    belongs_to :artist 
    belongs_to :genre
    has_many :notes

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

end
