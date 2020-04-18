CREATE TABLE IF NOT EXISTS Songs (
  sid SERIAL8 PRIMARY KEY,
  name TEXT,
  artist TEXT,
  url TEXT,
  explicit INTEGER,
  FOREIGN KEY (mid) REFERENCES Moods(mid)
);

CREATE TABLE IF NOT EXISTS Moods (
  mid SERIAL8 PRIMARY KEY,
  mood TEXT,
);

CREATE TABLE IF NOT EXISTS SongMood (
  sid INTEGER,
  mid INTEGER,
  PRIMARY KEY (sid, mid)
);

CREATE TABLE IF NOT EXISTS Suggestions (
  sugid SERIAL8 PRIMARY KEY,
  username TEXT,
  songname TEXT,
  artist TEXT,
  url TEXT,
  moodname TEXT,
  comment TEXT
);
