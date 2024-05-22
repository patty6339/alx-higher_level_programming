-- Check if the user user_0d_1 already exists
SELECT COUNT(*) INTO @user_exists FROM mysql.user WHERE User = 'user_0d_1';

-- If the user doesn't exist, create it and grant all privileges
IF @user_exists = 0 THEN
    CREATE USER 'user_0d_1'@'%' IDENTIFIED BY 'user_0d_1_pwd';
    GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'%';
    FLUSH PRIVILEGES;
END IF;

