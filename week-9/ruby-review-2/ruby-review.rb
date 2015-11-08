# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

=begin
# Pseudocode

Initialize a class called song.  It takes in a artist and a song name as an argument.

Initialize a class called Playlist. It take in songs as an arguement.
In playlist define
  an add method
  num_of_tracks method
  remove method
  includes? method
  play_all method
  display method
  
add play method to song class

add method
iterate through each arguement passed to method and push to playlist


remove method
iterate through each arguement passed to method and remove from playlist

num_tracks method
return playlist length

includes method
check playlist to see if song is included in it

play_all method
ITERATE through playlist
  call play method from song class on each song
END

display method
ITERATE through playlist
  puts song and artist
END

=end



# Initial Solution

# class Song
#   attr_reader :song_name, :artist
  
#   def initialize(song_name, artist)
#     @song_name = song_name
#     @artist = artist
#   end
  
#   def play
#     puts "#{@song_name} by #{@artist} is now playing!"
#   end
# end

# class Playlist
#   def initialize(*song)
#       @playlist = song
#   end
  
#   def add(*song)
#     song.each {|track| @playlist << track }
#   end
  
#   def remove(*song)
#     song.each {|track| @playlist.delete(track)}
#   end
  
#   def num_of_tracks
#     @playlist.length
#   end
  
#   def includes?(song)
#     @playlist.include?(song)
#   end
  
#   def play_all
#     @playlist.each {|track| track.play }
#   end
  
#   def display
#     @playlist.each {|track| puts "#{track.artist}: #{track.song_name}" }
#   end
# end




# Refactored Solution

class Song
  attr_reader :song_name, :artist
  
  def initialize(song_name, artist)
    @song_name = song_name
    @artist = artist
  end
  
  def play
    puts "#{@song_name} by #{@artist} is now playing!"
  end
end

class Playlist
  def initialize(*song)
      @playlist = song
      @track_num = 0
  end
  
  def add(*song)
    song.each {|track| @playlist << track }
  end
  
  def remove(*song)
    song.each {|track| @playlist.delete(track)}
  end
  
  def num_of_tracks
    @playlist.length
  end
  
  def includes?(song)
    @playlist.include?(song)
  end
  
  def play_all
    @playlist.each {|track| track.play }
  end
  
  def display
    @playlist.each {|track| puts "#{track.artist}: #{track.song_name}" }
  end
  
  def shuffle
    @playlist.shuffle!
  end
  
  def current_track
    puts "#{@playlist[@track_num].artist}: #{@playlist[@track_num].song_name}" 
  end
  
  def display_next
    puts "#{@playlist[@track_num + 1].artist}: #{@playlist[@track_num + 1].song_name}"
  end
end







# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display
my_playlist.shuffle
my_playlist.current_track
my_playlist.display_next




# Reflection
=begin
What concepts did you review in this challenge?

We went over using splats in this challenge and using classes.  I had heard of splat operators before, but had never used them.  They seem to work where arguments that are taken in are placed in an array.

What is still confusing to you about Ruby?

I seem to learn new methods or tricks with Ruby each day.  While nothing is overwhelmingly confusing anymore with it I am amazed with each new thing I learn.

What are you going to study to get more prepared for Phase 1?

Splat operators seem very useful and I plan to use them more often for future methods.

=end