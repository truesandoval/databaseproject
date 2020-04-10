
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
  (mid, 'name2', 'artist2', 'url2'),
  (2, 'The Box', 'Roddy Rich', 'https://www.youtube.com/watch?v=uLHqpjW3aDs'),
  (2, 'Physical', 'Dua Lipa', 'https://www.youtube.com/watch?v=SRdlnO9gMIY'),
  (2, 'Say So', 'Doja Cat', 'https://www.youtube.com/watch?v=pok8H_KF1FA'),
  (2, 'Intentions', 'Justin Bieber ft. Quavo', 'https://www.youtube.com/watch?v=kviFimaREU4'),
  (2, 'Life is Good', 'Drake and Future', 'https://www.youtube.com/watch?v=2-UaLcH5tCw'),
  (2, 'bad guy', 'Billie Eilish', 'https://www.youtube.com/watch?v=4-TbQnONe_w'),
  (2, 'My Oh My', 'Camila Cabello ft. DaBaby', 'https://www.youtube.com/watch?v=6fd2kkLmSDQ'),
  (2, 'Yummy', 'Justin Bieber', 'https://www.youtube.com/watch?v=JwzIGTlXOHM'),
  (2, 'Roxanne', 'Arizona Zervas', 'https://www.youtube.com/watch?v=0-YlrjvEqoM'),
  (2, 'Memories', 'Maroon 5', 'https://www.youtube.com/watch?v=o2DXt11SMNI'),
  (2, 'Heartless', 'The Weeknd', 'https://www.youtube.com/watch?v=1DpH-icPpl0'),
  (2, 'Falling', 'Harry Styles', 'https://www.youtube.com/watch?v=zPY4s6yMYkE'),
  (2, 'Own It', 'Stormzy ft. Burna Boy and Ed Sheeran', 'https://www.youtube.com/watch?v=eYwbGaSurCQ'),
  (2, 'Circles', 'Post Malone', 'https://www.youtube.com/watch?v=0sca9FP6zl8'),
  (2, 'hot girl bummer', 'blackbear', 'https://www.youtube.com/watch?v=k-T4Odb-r5c'),
  (2, 'La Difícil', 'Bad Bunny', 'https://www.youtube.com/watch?v=fEYUoBgYKzw'),
  (2, 'Time', 'Childish Gambino ft. Ariana Grande', 'https://www.youtube.com/watch?v=5pFm_lszTv8'),
  (2, 'Stained Glass', 'Madison Beer', 'https://www.youtube.com/watch?v=B67UN35aVWs'),
  (2, 'Like That', 'Doja Cat ft. Gucci Mane', 'https://www.youtube.com/watch?v=iEd-I2mL20Y'),
  (2, 'Actions', 'John Legend', 'https://www.youtube.com/watch?v=JWxizlCWjho'),
  (2, 'u know it’s real', 'Ant Saunders', 'https://www.youtube.com/watch?v=ilHKBCVlklU'),
  (3, 'Man of THe Year', 'ScHoolboy Q', 'https://www.youtube.com/watch?v=2lzD5NTs3l0'),
  (3, 'Welcome to The Party', 'Pop Smoke', 'https://www.youtube.com/watch?v=usu0XY4QNB0'),
  (3, 'Ballin', 'Roddy Ricch', 'https://www.youtube.com/watch?v=xkibCjoGZs4'),
  (3, 'Bop', 'DaBaby', 'https://www.youtube.com/watch?v=MKr_idr2EwQ'),
  (3, 'Savage', 'Megan Thee Stallion', 'https://www.youtube.com/watch?v=eJEKHdvntPI'),
  (3, 'Bacc Seat', 'Roddy Ricch ft. Ty Dolla $ign', 'https://www.youtube.com/watch?v=yYliDCjxBaI'),
  (3, 'WHATS POPPIN', 'Jack Harlow', 'https://www.youtube.com/watch?v=IgL78BpE5fw'),
  (3, 'Smack A Bitch', 'Rico Nasty', 'https://www.youtube.com/watch?v=-D4happ4TQU'),
  (3, 'B.I.T.C.H.', 'Megan Thee stallion', 'https://www.youtube.com/watch?v=1mNCReRRnVw'),
  (3, 'Stick Together', 'Rich The Kid ft. Lil Baby', 'https://www.youtube.com/watch?v=uvwUuKIT33c'),
  (3, 'Thot Box (Remix)', 'Hitmaka', 'https://www.youtube.com/watch?v=gKgD3qn4yk0'),
  (3, 'Realer', 'Megan Thee Stallion', 'https://www.youtube.com/watch?v=6BlWUh_iOKk'),
  (3, 'Sum 2 Prove', 'Lil Baby', 'https://www.youtube.com/watch?v=lr31Nq8B-Ho'),
  (3, 'Dior', 'Pop Smoke', 'https://www.youtube.com/watch?v=goYgHnsQdtY'),
  (3, 'Chanel Slides', 'Dreezy ft. Kash Doll', 'https://www.youtube.com/watch?v=mpAdintyiV8'),
  (3, 'Walker Texas Ranger', 'DaBaby', 'https://www.youtube.com/watch?v=gV6_-uSP4a8'),
  (3, 'Big Bank', 'YG', 'https://www.youtube.com/watch?v=m8agkKbGCzM'),
  (3, 'Ego', 'Jay Critch', 'https://www.youtube.com/watch?v=YmMruNsDb6E'),
  (3, 'Down Bad', 'Dreamville', 'https://www.youtube.com/watch?v=lIM1hejXzhw'),
  (3, 'Costa Rica', 'Dreamville', 'https://www.youtube.com/watch?v=Zn8ohtUY44g'); 

INSERT INTO Suggestions
  (username, songname, artist, url, moodname, comment)
VALUES
  ('username', 'songname', 'artist', 'url', 'moodname', 'comment');
