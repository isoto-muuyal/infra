-- Create user and database for NPC AI
CREATE USER npc_user WITH PASSWORD 'ai3#rblx-adn';
CREATE DATABASE npc_db;
GRANT ALL PRIVILEGES ON DATABASE npc_db TO npc_user;

-- Create user and database for BudgetWise
CREATE USER budget_user WITH PASSWORD 'bg1$port-pss';
CREATE DATABASE budget_db;
GRANT ALL PRIVILEGES ON DATABASE budget_db TO budget_user;
