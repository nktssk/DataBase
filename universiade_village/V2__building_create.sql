CREATE TABLE IF NOT EXISTS `building` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `address_id` INT UNSIGNED UNIQUE NOT NULL,
  `count_of_floors` TINYINT UNSIGNED NOT NULL, 
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE, 
  CONSTRAINT `building_address_id_fk` FOREIGN KEY (`address_id`)
  REFERENCES `address`(`id`) ON UPDATE CASCADE ON DELETE CASCADE 
  );
