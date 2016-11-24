# json.(album, :id, :name)

json.(album, :id, :name)
json.songs album.songs, partial: 'songs/song', as: :song
