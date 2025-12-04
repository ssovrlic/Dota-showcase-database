# Showcase Database Structure
## This repository contains the database structure for the Dota 2 game (tables, relations, indexes).
## Data is not included due to privacy considerations.
## Purpose: Demonstration of database modeling skills.

# Content 
dota-showcase-database.sql - SQL script with table definitions and relations 

## Technology
MySQL Workbench 8.x

## Table overview
- **Basic_items**: All information about items, which you can find and buy in the game
- **Boss**: Information about bosses in the game (name, abilities)
- **Events**: All events since year 2012
- **Hero**: Information about heroes in the game
- **Information**: Detailed information about heroes
- **Maps**: Everything about maps in the game (location, name)
- **Neutral_creeps**: Contains information about neutral_creeps in game
- **Powers**: Powers of heroes which you can buy
- **Runes**: Complete information about runes 
- **Special_events**: Famous events since year 2014
- **Teams**: Top 10 teams in Dota 2, in year 2025
- **Upgraded_items**: All about upgraded_items in the game


## Usage
Import the schema into MySQL using:
```bash
mysql -u user -p < dota-showcase-database.sql
```
