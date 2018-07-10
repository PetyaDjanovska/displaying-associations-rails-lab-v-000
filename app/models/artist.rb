class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    self.songs.count
  end

  def make_title_case
    self.title = self.title.titlecase
  end
end
