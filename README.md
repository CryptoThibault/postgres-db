# Postgres Database Command Line

Enter to postgres dashboard:

```zsh
psql postgres
```

```zsh
psql -d postgres -U postgres
```

Create Role:

```sql
CREATE ROLE db_user WITH LOGIN PASSWORD 'dbpassword';
ALTER ROLE db_user CREATEDB;
```

Connect Role:

```zsh
psql -d postgres -U db_user
```

Create Database:

```sql
CREATE DATABASE db_1;
```

Connect to Database:

```sql
\c db_1
```

```zsh
psql -d db_1 -U db_user
```

Create Table:

```sql
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(30));
```

More tools:

```sql
INSERT
SELECT
ALTER
UPDATE
DELETE
DROP
```

```sql
FROM
WHERE
INTO
VALUES
CHECK
AS
OR
AND
```

```sql
DATABASE
TABLE
SMALLINT
```

Test:

```sql
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(30), age SMALLINT);
INSERT INTO users (name, age) VALUES ('alice', 20), ('bob', 30), ('charlie', 25);
SELECT * FROM users WHERE users.age > 24;
```
