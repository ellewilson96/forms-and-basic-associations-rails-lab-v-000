class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist.name
  end

  def genre_name
    @genre = self.genre.name
    @genre
  end


end
