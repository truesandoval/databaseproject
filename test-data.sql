
INSERT INTO Moods
  (mood)
VALUES
  ('Love'), -- the mid starts here from 0 and so on
  ('Break-up'),
  ('Popular'),
  ('Work out'),
  ('EDM'),
  ('Carribean');

INSERT INTO Songs
  (mid, name, artist, url)
VALUES
  (mid, 'name1', 'artist1', 'url1'),
  (mid, 'name2', 'artist2', 'url2');

INSERT INTO Suggestions
  (username, songname, artist, url, moodname, comment)
VALUES
  ('username', 'songname', 'artist', 'url', 'moodname', 'comment');
