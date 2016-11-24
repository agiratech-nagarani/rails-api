# json.artists @artists

# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)
# end 

# json.array! @artists do |artist|
#   json.extract! artist, :id, :name, :label
# end


# json.artists @artists do |artist|
#   json.set! :id, artist.id
#   json.set! :name, artist.name
#   json.set! :label, artist.label
# end



# json.artists @artists do |artist|
#   json.(artist, :name_with_label)
# end


# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)
#   json.name_with_label name_with_label(artist)
# end


# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)

#   if artist.id == 1
#     json.name_with_label name_with_label(artist)
#   end
# end


# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)

#   5.times do |i|
#     json.set! "count_#{i}", i
#   end
# end
# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)

#   json.albums artist.albums do |album|
#     json.(album, :id, :name)
#   end
# end


# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)
#   json.albums artist.albums, partial: 'albums/album', as: :album
# end


# json.array! @artists do |artist|
#   json.(artist, :id, :name, :label)
# end

# json.artists @artists do |artist|
#   if artist.id == 0
#     json.(artist, :id, :name, :label)
#     json.albums artist.albums, partial: 'albums/album', as: :album
#   else
#     json.null!
#   end
# end


# json.artists @artists do |artist|
#   json.cache! ['v1', artist], expires_in: 1.minutes do
#     json.(artist, :id, :name, :label)
#     json.albums artist.albums, partial: 'albums/album', as: :album
#   end
# end



json.key_format! camelize: :lower
json.this_is_madness 'This. is. Sparta!'
json.artists @artists do |artist|
  json.(artist, :id, :name, :label)
  json.albums artist.albums, partial: 'albums/album', as: :album
end


