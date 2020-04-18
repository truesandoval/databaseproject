DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Moods;
DROP TABLE IF EXISTS SongMood;
DROP TABLE IF EXISTS Suggestions;

CREATE TABLE IF NOT EXISTS Songs (
  sid INTEGER PRIMARY KEY AUTOINCREMENT,
  mid INTEGER NOT NULL,
  name TEXT,
  artist TEXT,
  url TEXT,
  explicit INTEGER,
  FOREIGN KEY (mid) REFERENCES Moods(mid)
);

CREATE TABLE IF NOT EXISTS Moods (
  mid INTEGER PRIMARY KEY AUTOINCREMENT,
  mood TEXT
);

CREATE TABLE IF NOT EXISTS SongMood (
  sid INTEGER,
  mid INTEGER,
  PRIMARY KEY (sid, mid)
  FOREIGN KEY (sid) REFERENCES Songs(sid)
  FOREIGN KEY (mid) REFERENCES Moods(mid)
);

CREATE TABLE IF NOT EXISTS Suggestions (
  sugid INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  songname TEXT,
  artist TEXT,
  url TEXT,
  moodname TEXT,
  comment TEXT
);
