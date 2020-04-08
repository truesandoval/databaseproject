CREATE TABLE IF NOT EXISTS Songs (
  sid SERIAL8 PRIMARY KEY,
  mid BIGINT NOT NULL,
  name TEXT,
  artist TEXT,
  url TEXT,
  FOREIGN KEY (mid) REFERENCES Moods(mid)
);

CREATE TABLE IF NOT EXISTS Moods (
  mid SERIAL8 PRIMARY KEY,
  mood TEXT,
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
