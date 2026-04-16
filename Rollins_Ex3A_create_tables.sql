DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

SELECT `customer`.`customer_id`,
    `customer`.`name`,
    `customer`.`phone`,
    `customer`.`email`,
    `customer`.`address`
FROM `lana_dog_walking`.`customer`;
SELECT `dog`.`dog_id`,
    `dog`.`pet_name`,
    `dog`.`pet_breed`,
    `dog`.`age`,
    `dog`.`special_notes`,
    `dog`.`customer_id`
FROM `lana_dog_walking`.`dog`;
SELECT `payment`.`payment_id`,
    `payment`.`amount`,
    `payment`.`date`,
    `payment`.`method`,
    `payment`.`walk_id`
FROM `lana_dog_walking`.`payment`;
SELECT `walk`.`walk_id`,
    `walk`.`date`,
    `walk`.`walk_start_time`,
    `walk`.`walk_end_time`,
    `walk`.`status`,
    `walk`.`dog_id`,
    `walk`.`walker_id`
FROM `lana_dog_walking`.`walk`;
SELECT `walker`.`walker_id`,
    `walker`.`name`,
    `walker`.`phone`
FROM `lana_dog_walking`.`walker`;
