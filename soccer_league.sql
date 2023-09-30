-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams
(
  id SERIAL PRIMARY KEY,
  team_name TEXT NOT NULL,  
);

CREATE TABLE players
(
  id SERIAL PRIMARY KEY,
  player_name TEXT NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams,

)

CREATE TABLE goals
(
  player_id INTEGER NOT NULL REFERENCES players,
  match_id INTEGER NUT NULL REFERENCES matches

)

CREATE TABLE matches
(
  id SERIAL PRIMARY KEY,
  team_one INTEGER NOT NULL REFERENCES teams,
  team_two INTEGER NOT NULL REFERENCES teams,
  referee_id INTEGER NOT NULL REFERENCES referee,
  season_id INTEGER NOT NULL REFERENCES season
)

CREATE TABLE wins
(
  team_id INTEGER NOT NULL UNIQUE REFERENCES teams,
  match_id INTEGER NOT NULL UNIQUE REFERENCES matches
)

CREATE TABLE referee
(
  id SERIAL PRIMARY KEY,
  referee_name TEXT NOT NULL
)

CREATE TABLE season
(
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE
)

