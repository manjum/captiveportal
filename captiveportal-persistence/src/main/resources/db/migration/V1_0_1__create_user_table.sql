CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `user_role` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mac_address` (`mac_address`),
  KEY `FK_user_role` (`user_role`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`user_role`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
