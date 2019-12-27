ALTER TABLE News 
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

/*Making category_id foreign key in club table */
ALTER TABLE club
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

/*Dropping the columns name natinality in players table*/
ALTER TABLE player
    DROP COLUMN nationality;

ALTER TABLE `club` CHANGE `category_id` `cvalue_id` INT(128) NOT NULL 
FOREIGN KEY (cvalue_id) REFERENCES catagory_value(cvalue_id);

/* Changing the datatype of club_founded_date' to VARCHAR from date*/
ALTER TABLE `club` CHANGE `club_founded_date` `club_founded_date` VARCHAR(50) NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `FirstName` `first_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `LastName` `last_name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `username` `username` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `last_name` `last_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `first_name` `first_name` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `Email` `email` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE `users` CHANGE `user_password` `user_password` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
