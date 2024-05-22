-- Check if the database hbtn_0d_2 exists
SELECT EXISTS(SELECT datname FROM pg_database WHERE datname = 'hbtn_0d_2') INTO @db_exists;

-- If the database doesn't exist, create it
IF NOT @db_exists THEN
    CREATE DATABASE hbtn_0d_2;
END IF;

-- Check if the user user_0d_2 exists
SELECT EXISTS(SELECT rolname FROM pg_roles WHERE rolname = 'user_0d_2') INTO @user_exists;

-- If the user doesn't exist, create it and grant SELECT privilege on hbtn_0d_2
IF NOT @user_exists THEN
    CREATE USER user_0d_2 WITH PASSWORD 'user_0d_2_pwd';
    GRANT SELECT ON DATABASE hbtn_0d_2 TO user_0d_2;
END IF;

