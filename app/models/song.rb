class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    #since there were no artists in the database you make a new artist and then
    #you assign that artist object to the self.artist
    drake = Artist.new(name: 'Drake')
    self.artist = drake
  end
end
