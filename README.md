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
```

Connect Role:

```sql
\c db_user;
```

```zsh
psql -d postgres -U db_user
```

Create Database:

```sql
CREATE DATABASE db_1;
```

Connect to Database:

```sql
\c db_1;
```

```zsh
psql -d db_1 -U db_user
```
