CREATE TABLE IF NOT EXISTS Songs (
  sid INTEGER PRIMARY KEY AUTOINCREMENT,
  mid INTEGER NOT NULL,
  name TEXT,
  artist TEXT,
  url TEXT,
  FOREIGN KEY (mid) REFERENCES Moods(mid)
);

CREATE TABLE IF NOT EXISTS Moods (
  mid INTEGER PRIMARY KEY AUTOINCREMENT,
  mood TEXT
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
