class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist.name
  end

  def genre_name
    self.genre.name
  end

  def note_contents
    self.notes.content
end
