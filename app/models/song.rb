class Song < ActiveRecord::Base
  belongs_to :artist
  validate :is_title_case

  before_validation :make_title_case


  def artist_name
    self.artist.name
  end
end
