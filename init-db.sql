-- Create user and database for NPC AI
CREATE USER npc_ai_user WITH PASSWORD 'npcroblox';
CREATE DATABASE npc_ai_db;
GRANT ALL PRIVILEGES ON DATABASE npc_ai_db TO npc_ai_user;

-- Create user and database for BudgetWise
CREATE USER budgetwise_user WITH PASSWORD 'budgetwise';
CREATE DATABASE budgetwise;
GRANT ALL PRIVILEGES ON DATABASE budgetwise TO budgetwise_user;

-- Initialize npc_ai_db

CREATE TABLE IF NOT EXISTS conversations (
  id uuid PRIMARY KEY,
  roblox_user_id bigint,
  roblox_username text,
  started_at timestamp,
  last_message_at timestamp,
  topic text,
  sentiment text
);

CREATE TABLE IF NOT EXISTS messages (
  id uuid PRIMARY KEY,
  conversation_id uuid REFERENCES conversations(id),
  sender text,
  content text,
  created_at timestamp,
  is_troll boolean
);

CREATE TABLE IF NOT EXISTS analytics (
  id uuid PRIMARY KEY,
  roblox_user_id bigint,
  country text,
  inferred_age_range text,
  created_at timestamp
);
