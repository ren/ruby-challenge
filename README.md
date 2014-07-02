# YAML Parsing

Parse music.yml so that we can access it in Ruby.

Your parsing code should return an object that allows you to access attributes using the [] operator:

    data["genres"].last["artists"].first["albums"].first["tracks"].last["name"] => "But Not For Me"

The returned object should also allow you to access attributes using method calls:

    data.genres.last.artists.first.albums.first.tracks.last.name => "But Not For Me"

Bonus points for corresponding test suite.