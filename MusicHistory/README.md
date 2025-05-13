# MusicHistory Database

This project defines and populates a PostgreSQL database called `MusicHistory` for bootcamp practice.

## Included Scripts

- `01_MusicHistory_Create.sql`: Creates all database tables (Genre, Artist, Album, Song)
- `02_MusicHistory_Seed.sql`: Seeds the database with initial genre, artist, album, and song data
- `03_MusicHistory_TestQueries.sql`: Example queries for practicing SQL (joins, filters, aggregates)

## How to Use

### 1. Create the Database

In pgAdmin or using psql, run:

```sql
CREATE DATABASE "MusicHistory";
```

### 2. Run the Table Creation Script

```bash
psql -U postgres -d MusicHistory -f 01_MusicHistory_Create.sql
```

### 3. Seed the Data

```bash
psql -U postgres -d MusicHistory -f 02_MusicHistory_Seed.sql
```

### 4. Run Test Queries or Write Your Own

```bash
psql -U postgres -d MusicHistory -f 03_MusicHistory_TestQueries.sql
```

## Folder Structure

```text
MusicHistory/
├── 01_MusicHistory_Create.sql      # Schema: CREATE TABLE statements
├── 02_MusicHistory_Seed.sql        # Data: INSERT statements
├── 03_MusicHistory_TestQueries.sql # Queries: SELECT, JOIN, GROUP BY, etc.
└── README.md                       # Project overview and usage instructions
```

## Requirements

- PostgreSQL (>= 14)
- pgAdmin or psql
- Git + GitHub CLI (for version control and collaboration)

---

Happy querying! 🎶
