
resource "spotify_playlist" "D_core"{
    name= "D_core"
    tracks= ["6YNl1rXbhKvmbMrw9cp3RQ"]
}

data "spotify_search_track" "thelocaltrain" {
    artist = "The Local Train"
}

resource "spotify_playlist" "ChooLo" {
    name = "Choo Lo"
    tracks = [data.spotify_search_track.thelocaltrain.tracks[0].id,
    data.spotify_search_track.thelocaltrain.tracks[1].id,
    data.spotify_search_track.thelocaltrain.tracks[2].id]
}

data "spotify_search_track" "kendrick_lamar" {
    artist = "Kendrick Lamar"
    limit = 8
}

resource "spotify_playlist" "W" {
name = "W"
tracks= [ data.spotify_search_track.kendrick_lamar.tracks[0].id,
data.spotify_search_track.kendrick_lamar.tracks[1].id,
data.spotify_search_track.kendrick_lamar.tracks[2].id,
data.spotify_search_track.kendrick_lamar.tracks[3].id,
data.spotify_search_track.kendrick_lamar.tracks[4].id,
data.spotify_search_track.kendrick_lamar.tracks[5].id ] 
}
