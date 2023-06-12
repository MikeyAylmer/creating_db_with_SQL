DROP DATABASE soccer_db;
CREATE DATABASE soccer_db;
\c soccer_db

CREATE TABLE teams (
    ID SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE players (
    ID SERIAL PRIMARY KEY,
    name TEXT
);


CREATE TABLE games (
    ID SERIAL PRIMARY KEY,
    team_id INT REFERENCES teams,
    player_id INT REFERENCES players
);

CREATE TABLE goals_for_game (
    player_id INTEGER REFERENCES players,
    game_id INTEGER REFERENCES games,
    goals INTEGER
);

CREATE TABLE date_for_games (
    id SERIAL PRIMARY KEY,
    game_id INT REFERENCES games,
    game_date DATE 
);

CREATE TABLE wins (
    team_id INT REFERENCES teams,
    team_name TEXT REFERENCES teams,
    game_id INT REFERENCES games,
    game_date DATE REFERENCES date_for_games
);

CREATE TABLE referees_for_games (
    id SERIAL PRIMARY KEY,
    name TEXT,
    game_date DATE REFERENCES date_for_games
);

CREATE TABLE teams_schedule (
    game_date DATE REFERENCES date_for_games,
    game_id INT REFERENCES games,
    team_id INT REFERENCES teams
);

