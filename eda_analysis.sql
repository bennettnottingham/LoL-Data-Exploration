# League of Legends Spring Split 2023 Data Analysis Project

-- Distribution of Win Rates
SELECT
    ROUND(stats.win_percent, 2) AS win_rate,
    COUNT(*) AS frequency
FROM stats
GROUP BY win_rate
ORDER BY win_rate;

-- Distribution of KDA
SELECT
    ROUND(stats.KDA, 2) AS kda,
    COUNT(*) AS frequency
FROM stats
GROUP BY kda
ORDER BY kda;

-- Distribution of Kill Participation (KP)
SELECT
    ROUND(stats.KP, 2) AS kp,
    COUNT(*) AS frequency
FROM stats
GROUP BY kp
ORDER BY kp;

-- Distribution of Creep Score Per Minute (CSPM)
SELECT
    ROUND(stats.CSPM, 2) AS cspm,
    COUNT(*) AS frequency
FROM stats
GROUP BY cspm
ORDER BY cspm;

# Win Rate
SELECT
    Players.Player,
    AVG(stats.win_percent) AS avg_win_rate
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Player
ORDER BY avg_win_rate DESC;

SELECT *
FROM players
WHERE Player IN ('ry0ma', 'Lzq', 'Winsome', 'Faker');

# Lets filter for players who have played more than 10 games

# Win Rate
SELECT
    Players.Player,
    Players.GP AS games_played,
    AVG(stats.win_percent) AS avg_win_rate
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Player, Players.GP
HAVING Players.GP > 10
ORDER BY avg_win_rate DESC;

# Who is the player with the highest win rate? Faker
SELECT
    Players.Player,
    AVG(stats.win_percent) AS avg_win_rate
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
GROUP BY Players.Player
ORDER BY avg_win_rate DESC
LIMIT 1;

# KDA:
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.KDA
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 5
ORDER BY stats.KDA DESC;

# Whos the player with highest KDA? Berserker
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.KDA
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.KDA DESC
LIMIT 1;

# KP (Kill Participation):
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.KP
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 5
ORDER BY stats.KP DESC;

# Whos player with highest KP? Chime
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.KP
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.KP DESC
LIMIT 1;

# Highest CS per minute
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.CSPM
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.CSPM DESC;

# Whos player with highest CS? Light
SELECT
    Players.Player,
    Players.GP AS games_played,
    stats.CSPM
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.CSPM DESC
LIMIT 1;

# Whos the player with the most kills? Elk
SELECT
    Players.Player,
    stats.K
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.K DESC
LIMIT 1;

# Whos the player with the most deaths? Meiko
SELECT
    Players.Player,
    stats.D
FROM Players
JOIN stats ON Players.player_id = stats.player_id
WHERE Players.GP > 10
ORDER BY stats.D DESC
LIMIT 1;

# Which players have played the most games? LIV Sandbox played the most games.
SELECT
    Players.Player,
    SUM(Players.GP) AS total_games_played
FROM Players
GROUP BY Players.Player
ORDER BY total_games_played DESC;

-- Average Win Rate for Each Team (JDG Gaming Highest)
SELECT
    Teams.Team,
    AVG(stats.win_percent) AS avg_win_rate
FROM Teams
JOIN Players ON Teams.Team_ID = Players.Team_ID
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Teams.Team
ORDER BY avg_win_rate DESC;

-- Average KDA for Each Team (Team Vitality Highest)
SELECT
    Teams.Team,
    AVG(stats.KDA) AS avg_kda
FROM Teams
JOIN Players ON Teams.Team_ID = Players.Team_ID
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Teams.Team
ORDER BY avg_kda DESC;

-- Average Kill Participation (KP) for Each Team (FunPlus Phoenix Highest)
SELECT
    Teams.Team,
    AVG(stats.KP) AS avg_kp
FROM Teams
JOIN Players ON Teams.Team_ID = Players.Team_ID
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Teams.Team
ORDER BY avg_kp DESC;

-- Average Gold Percentage for Each Team (LGD Gaming Highest)
SELECT
    Teams.Team,
    AVG(stats.gold_percent) AS avg_gold_percent
FROM Teams
JOIN Players ON Teams.Team_ID = Players.Team_ID
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Teams.Team
ORDER BY avg_gold_percent DESC;

-- Positional Win Rate Comparison (Support highest win rate)
SELECT
    Players.Pos AS position,
    AVG(stats.win_percent) AS avg_win_rate
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_win_rate DESC;

-- Positional KDA Analysis (ADC highest KDA)
SELECT
    Players.Pos AS position,
    AVG(stats.KDA) AS avg_kda
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_kda DESC;

-- Positional KP (Kill Participation) Comparison (Support highest KP)
SELECT
    Players.Pos AS position,
    AVG(stats.KP) AS avg_kp
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_kp DESC;

-- Positional Gold Distribution (ADC highest gold percentage)
SELECT
    Players.Pos AS position,
    AVG(stats.gold_percent) AS avg_gold_percent
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_gold_percent DESC;

-- Positional CSPM (Creep Score Per Minute) Analysis (ADC highest CSPM)
SELECT
    Players.Pos AS position,
    AVG(stats.CSPM) AS avg_cspm
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_cspm DESC;

-- Positional Win Rate and KDA Correlation (Support has major impact)
SELECT
    Players.Pos AS position,
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.KDA) AS avg_kda
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Pos
ORDER BY avg_win_rate DESC;

-- Compare the average win rates of players from different regions (LEC highest WR)
SELECT
    Players.Region,
    AVG(stats.win_percent) AS avg_win_rate
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_win_rate DESC;

-- Analyze the average KDA of players from different regions (LCS highest KDA)
SELECT
    Players.Region,
    AVG(stats.KDA) AS avg_kda
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_kda DESC;

-- Compare the average KP of players from different regions (LPL highest KP)
SELECT
    Players.Region,
    AVG(stats.KP) AS avg_kp
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_kp DESC;

-- Analyze the distribution of gold percentage among players from different regions (LPL highest KP)
SELECT
    Players.Region,
    AVG(stats.gold_percent) AS avg_gold_percent
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_gold_percent DESC;

-- Compare the average CSPM of players from different regions (LPL highest CSPM)
SELECT
    Players.Region,
    AVG(stats.CSPM) AS avg_cspm
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_cspm DESC;

-- Explore the correlation between win rate and KDA for players from different regions
SELECT
    Players.Region,
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.KDA) AS avg_kda
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Players.Region
ORDER BY avg_win_rate DESC;

-- Explore correlation between win rate and gold percentage for players
SELECT
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.gold_percent) AS avg_gold_percent
FROM stats
GROUP BY stats.player_id;

-- Analyze correlation between win rate and KDA for players
SELECT
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.KDA) AS avg_kda
FROM stats
GROUP BY stats.player_id;

-- Explore correlation between win rate and CSPM for players
SELECT
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.CSPM) AS avg_cspm
FROM stats
GROUP BY stats.player_id;

-- Analyze correlation between gold percentage and KDA for players
SELECT
    AVG(stats.gold_percent) AS avg_gold_percent,
    AVG(stats.KDA) AS avg_kda
FROM stats
GROUP BY stats.player_id;

-- Explore correlation between KP and win rate for players
SELECT
    AVG(stats.KP) AS avg_kp,
    AVG(stats.win_percent) AS avg_win_rate
FROM stats
GROUP BY stats.player_id;

-- Analyze correlation between KDA and CSPM for players
SELECT
    AVG(stats.KDA) AS avg_kda,
    AVG(stats.CSPM) AS avg_cspm
FROM stats
GROUP BY stats.player_id;

-- Highest composite score ADC
SELECT
    Pos,
    AVG(stats.win_percent) AS avg_win_rate,
    AVG(stats.KDA) AS avg_kda,
    AVG(stats.KP) AS avg_kp,
    AVG(stats.CSPM) AS avg_cspm,
    AVG(stats.gold_percent) AS avg_gold_percent,
    (AVG(stats.win_percent) + AVG(stats.KDA) + AVG(stats.KP) + AVG(stats.CSPM) + AVG(stats.gold_percent)) AS composite_score
FROM Players
JOIN stats ON Players.player_id = stats.player_id
GROUP BY Pos
ORDER BY composite_score DESC;