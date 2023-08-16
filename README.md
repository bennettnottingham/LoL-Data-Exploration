# League of Legends Spring Split 2023 Data Analysis Project

## Project Overview

Welcome to the League of Legends Spring Split 2023 Data Analysis Project. This repository serves as a comprehensive resource for exploring the intricate world of competitive League of Legends. Our journey encompasses data collection, preparation, and detailed exploratory insights to provide a comprehensive view of the spring split season.

## Data Collection and Preparation

To embark on this project, we harnessed Python's Pandas library to meticulously collect and refine player statistics from Oracle's Elixir API. This comprehensive approach allowed us to capture critical metrics including win rates, KDA ratios, Kill Participation (KP), Creep Score Per Minute (CSPM), and gold percentages. Once the data was compiled, we skillfully integrated it into a MySQL database, enhancing its utility for analysis.

## Database Design

Taking the project a step further, we strategically divided the initial dataset into three distinct tables within the MySQL Workbench: `Players`, `Teams`, and `Stats`. These tables were meticulously interconnected using primary and foreign keys, creating a structured database schema that facilitated seamless data interaction and robust query capabilities.

- `Players`: This table houses individual player data, including their player ID, name, team affiliation, position, games played, and region. Foreign keys link players to their respective teams.

- `Teams`: The teams table aggregates team-related information, containing team names and unique identifiers.

- `Stats`: Here, we centralize the key performance metrics such as win percentage, KDA, KP, CSPM, and gold percentage. This table is linked to players through foreign keys, establishing a strong relationship that allows comprehensive analysis.

## Exploratory Data Analysis (EDA)

Our exploration into the dataset was guided by detailed SQL queries, leading to invaluable insights:

- **Player Performance**: Rigorous analysis of win rates, KDA, KP, CSPM, and gold percentages unveiled standout players whose consistent performance contributed to their team's success.

- **Team Strategy**: By comparing teams' win rates, KDA, and other metrics, we highlighted strategic differences that set top-performing teams apart.

- **Positional Dynamics**: Focusing on player positions, we explored how roles correlate with performance metrics, revealing nuanced positional dynamics.

- **Regional Comparisons**: Analyzing cross-regional performance showcased varying trends and identified regions with impressive statistics.

## Key Findings and Insights

Our data-driven approach led us to significant discoveries:

- **Structured Data Model**: The separation of data into distinct tables enhanced our ability to analyze and draw insights, showcasing the importance of a well-designed database schema.

- **Positional Impact**: Through our analysis, it became evident that certain positions, notably the ADC role, significantly influenced overall team performance.

- **Team Synergy**: By connecting player and team data, we highlighted teams that successfully combined individual prowess with cohesive strategies.

- **Metric Relationships**: Exploring metric correlations opened avenues to understand how different aspects of play interrelate, guiding strategic decisions.

## Repository Contents

- `data_collection.ipynb`: A Python notebook detailing the data collection process and initial exploration.
- `database_setup.sql`: SQL script for creating the structured database schema and linking tables.
- `eda_analysis.sql`: SQL queries for in-depth exploratory data analysis.
- `project_description.md`: A comprehensive project description outlining objectives, methodologies, and findings.

## Conclusion

The League of Legends Spring Split 2023 Data Analysis Project showcases the power of data in unraveling the intricacies of competitive gaming. By meticulously collecting and structuring data, performing rigorous exploratory analysis, and drawing insightful conclusions, we've gained a deeper understanding of player performance, team dynamics, and regional trends within the esports arena. This project encourages fellow enthusiasts to delve into the world of data-driven analysis and uncover the secrets that shape the realm of League of Legends.
