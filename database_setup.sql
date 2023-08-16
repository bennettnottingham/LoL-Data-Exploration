USE league;

SELECT * FROM league_stats;

ALTER TABLE league_stats CHANGE `W%` win_percent DECIMAL(5, 2);
ALTER TABLE league_stats CHANGE `DMG%` dmg_percent DECIMAL(5, 2);
ALTER TABLE league_stats CHANGE `GOLD%` gold_percent DECIMAL(5, 2);
ALTER TABLE league_stats CHANGE `KP` KP DECIMAL(5, 2);

CREATE TABLE `Players` (
    `Player_ID` INT AUTO_INCREMENT PRIMARY KEY,
    `Player` TEXT,
    `Team_ID` int,
    `Pos` TEXT,
    `GP` INT DEFAULT NULL,
    `Region` TEXT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

INSERT INTO Players (Player, Team_ID, Pos, GP, Region)
SELECT ls.Player, t.team_id, ls.Pos, ls.GP, ls.Region
FROM league_stats ls
JOIN Teams t ON ls.Team = t.Team;

SELECT * FROM players;

CREATE TABLE Teams (
    Team_ID INT AUTO_INCREMENT PRIMARY KEY,
    Team VARCHAR(255)
);

SELECT * FROM Teams;

INSERT INTO Teams (Team)
SELECT DISTINCT Team
FROM league_stats;

# now we need to make table stats

CREATE TABLE stats (
    player_id INT,
    win_percent DECIMAL(5, 2),
    K INT,
    D INT,
    A INT,
    KDA DECIMAL(5, 2),
    KP DECIMAL(5, 2),
    CSPM DECIMAL(5, 2),
    gold_percent DECIMAL(5, 2),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

INSERT INTO stats (player_id, win_percent, K, D, A, KDA, KP, CSPM, gold_percent)
SELECT
    p.player_id,
    ls.win_percent AS win_percent,
    ls.K,
    ls.D,
    ls.A,
    ls.KDA,
    ls.KP,
    ls.CSPM,
    ls.gold_percent AS gold_percent
FROM league_stats ls
JOIN Players p ON ls.Player = p.Player;

SELECT * FROM stats;