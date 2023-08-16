# League of Legends Spring Split 2023 Data Analysis Project

## Project Overview

Welcome to the League of Legends Spring Split 2023 Data Analysis Project. In this project, we dive deep into the world of competitive League of Legends, leveraging data-driven insights to uncover hidden trends, player performance dynamics, and team strategies. This repository serves as a comprehensive resource for our analysis, bringing together data collection, preparation, and exploratory insights to provide a holistic view of the spring split season.

## Data Collection and Preparation

To embark on this journey, we harnessed the power of Python's Pandas library to meticulously gather and clean the player statistics from Oracle's Elixir API. This allowed us to capture crucial metrics such as win rates, KDA ratios, Kill Participation (KP), Creep Score Per Minute (CSPM), and gold percentages. Once the data was compiled, we seamlessly integrated it into a MySQL database using the provided SQL scripts, creating a robust foundation for our exploration.

## Exploratory Data Analysis (EDA)

Our investigation delved into every nook and cranny of the dataset, unearthing fascinating insights that illuminate the Spring Split's competitive landscape. We utilized SQL queries to perform a series of EDA steps, including:

- **Player Performance Insights**: By dissecting win rates and performance metrics, we were able to identify standout players and positions that consistently made a difference on the Rift. This analysis shed light on key roles and individuals that drove victories.

- **Team Dynamics and Comparisons**: Team performance was not left unscrutinized. We assessed win rates, KDA ratios, KP, CSPM, and gold percentages to discern trends among competing teams, unveiling strategic nuances that set them apart.

- **Positional Analysis**: A nuanced examination of player positions unearthed intriguing correlations between roles and performance metrics. We explored how positions influenced win rates, KDA, KP, CSPM, and gold percentages, offering insights into role-specific dynamics.

- **Regional Impact**: Our analysis extended beyond teams and players to encompass the global League of Legends scene. We evaluated performance metrics across regions, highlighting areas of dominance and sharing invaluable cross-regional comparisons.

## Key Findings and Insights

Our data-driven journey yielded a treasure trove of insights:

- **Positional Influence**: The analysis of player positions revealed that certain roles, such as the ADC position, exhibited a remarkable composite score, suggesting their crucial impact on overall team success.

- **Team Dynamics**: Team performance analysis showcased teams with stellar win rates, high KDA, and efficient KP. These teams exhibited a unique blend of coordinated play and individual skill.

- **Metric Correlations**: We discovered intriguing correlations between different performance metrics, unveiling intriguing relationships that impact gameplay strategies and decision-making.

- **Regional Supremacy**: Our exploration across different regions underscored the strength of particular locales, indicating potential areas of strategic focus for teams.

## Repository Contents

- `LoL_data.ipynb`: A Python notebook detailing the data collection process and initial exploration.
- `database_setup.sql`: SQL script for creating the database schema and necessary tables.
- `LoL_analysis.sql`: SQL queries for comprehensive exploratory data analysis.
- `project_description.md`: A detailed description of the project and its significance.

## Conclusion

The League of Legends Spring Split 2023 Data Analysis Project is a testament to the power of data-driven insights in unraveling the complexities of competitive gaming. Through meticulous data collection, strategic database structuring, and in-depth exploratory analysis, we've shed light on the dynamic world of League of Legends esports. This project invites you to join us in uncovering the intricacies of player performance, team dynamics, and regional dominance, as we endeavor to enhance our understanding of the game we love.
