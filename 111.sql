USE mgpu_ico_db_20;
CREATE TABLE `employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NOT NULL,
  `department` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Создание таблицы tickets
CREATE TABLE `tickets` (
  `ticket_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Заполнение таблицы 'employees'
INSERT INTO `employees` (`full_name`, `department`) VALUES ('Иванов Иван Иванович', 'IT');
INSERT INTO `employees` (`full_name`, `department`) VALUES ('Петрова Анна Сергеевна', 'HR');
INSERT INTO `employees` (`full_name`, `department`) VALUES ('Сидоров Алексей Петрович', 'Финансы');
INSERT INTO `employees` (`full_name`, `department`) VALUES ('Козлова Мария Владимировна', 'IT');

-- Заполнение таблицы 'tickets'
INSERT INTO `tickets` (`user_name`, `description`, `status`) VALUES ('user001', 'Не работает принтер в кабинете 301', 'Открыта');
INSERT INTO `tickets` (`user_name`, `description`, `status`) VALUES ('user045', 'Сбой в работе почтового клиента', 'Закрыта');
INSERT INTO `tickets` (`user_name`, `description`, `status`) VALUES ('user078', 'Запросить доступ к сетевой папке', 'Открыта');
INSERT INTO `tickets` (`user_name`, `description`, `status`) VALUES ('user123', 'Обновить программное обеспечение', 'В работе');

-- Вывести все заявки со статусом "Открыта"
SELECT * 
FROM `tickets` 
WHERE `status` = 'Открыта';

SELECT * FROM `employees`;

SELECT * FROM `tickets`;

