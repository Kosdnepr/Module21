-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 16 2018 г., 02:02
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pc_cooling`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appliance`
--

CREATE TABLE `appliance` (
  `id` int(11) NOT NULL,
  `appliance` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `appliance`
--

INSERT INTO `appliance` (`id`, `appliance`) VALUES
(1, 'для процессора'),
(2, 'для корпуса'),
(3, 'для видеокарты');

-- --------------------------------------------------------

--
-- Структура таблицы `bearing_type`
--

CREATE TABLE `bearing_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bearing_type`
--

INSERT INTO `bearing_type` (`id`, `name`) VALUES
(1, 'скольжения (sleeve)'),
(2, 'гидродинамический (FDB) '),
(3, 'масляного давления (SSO)');

-- --------------------------------------------------------

--
-- Структура таблицы `connector_type`
--

CREATE TABLE `connector_type` (
  `id` int(11) NOT NULL,
  `connector_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `connector_type`
--

INSERT INTO `connector_type` (`id`, `connector_type`) VALUES
(1, '3 pin'),
(2, '4 pin'),
(3, 'molex');

-- --------------------------------------------------------

--
-- Структура таблицы `coolers`
--

CREATE TABLE `coolers` (
  `id` int(11) NOT NULL,
  `manufacturer` int(11) NOT NULL,
  `models` int(11) NOT NULL,
  `appliance` int(11) NOT NULL,
  `cpu_socket` int(11) NOT NULL,
  `gpu_compatibility` int(11) NOT NULL,
  `fan_size` int(11) NOT NULL,
  `fan_speed` int(11) NOT NULL,
  `bearing_type` int(11) NOT NULL,
  `noise_level` int(11) NOT NULL,
  `static_preasure` int(11) NOT NULL,
  `heatsink_type` int(11) NOT NULL,
  `connector_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coolers`
--

INSERT INTO `coolers` (`id`, `manufacturer`, `models`, `appliance`, `cpu_socket`, `gpu_compatibility`, `fan_size`, `fan_speed`, `bearing_type`, `noise_level`, `static_preasure`, `heatsink_type`, `connector_type`) VALUES
(1, 2, 1, 2, 4, 3, 2, 2, 2, 2, 3, 1, 1),
(2, 2, 2, 2, 4, 3, 3, 1, 2, 2, 1, 1, 1),
(3, 2, 3, 1, 1, 3, 3, 2, 2, 3, 3, 3, 2),
(4, 2, 4, 1, 1, 3, 2, 2, 1, 3, 1, 3, 2),
(5, 1, 5, 2, 4, 3, 1, 3, 3, 3, 3, 1, 2),
(6, 1, 6, 2, 4, 3, 2, 2, 3, 3, 3, 1, 2),
(7, 1, 7, 2, 4, 3, 3, 1, 3, 3, 1, 1, 1),
(8, 1, 8, 1, 1, 3, 2, 2, 3, 3, 3, 3, 2),
(9, 3, 9, 1, 1, 3, 2, 2, 2, 3, 2, 3, 2),
(10, 3, 10, 3, 4, 4, 2, 2, 2, 3, 2, 3, 2),
(11, 3, 11, 2, 4, 3, 1, 3, 2, 3, 3, 1, 1),
(12, 3, 12, 2, 4, 3, 2, 2, 2, 3, 1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `cpu_socket`
--

CREATE TABLE `cpu_socket` (
  `id` int(11) NOT NULL,
  `cpu_socket` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cpu_socket`
--

INSERT INTO `cpu_socket` (`id`, `cpu_socket`) VALUES
(1, 'универсальный'),
(2, 'intel'),
(3, 'amd'),
(4, 'none');

-- --------------------------------------------------------

--
-- Структура таблицы `fan_size`
--

CREATE TABLE `fan_size` (
  `id` int(11) NOT NULL,
  `fan_size` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fan_size`
--

INSERT INTO `fan_size` (`id`, `fan_size`) VALUES
(1, '92'),
(2, '120'),
(3, '140');

-- --------------------------------------------------------

--
-- Структура таблицы `fan_speed`
--

CREATE TABLE `fan_speed` (
  `id` int(11) NOT NULL,
  `fan_speed` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fan_speed`
--

INSERT INTO `fan_speed` (`id`, `fan_speed`) VALUES
(1, 'до 1200 об./мин.'),
(2, 'до 1600 об./мин.'),
(3, 'до 2000 об./мин.');

-- --------------------------------------------------------

--
-- Структура таблицы `gpu_compatibility`
--

CREATE TABLE `gpu_compatibility` (
  `id` int(11) NOT NULL,
  `gpu_compatibility` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gpu_compatibility`
--

INSERT INTO `gpu_compatibility` (`id`, `gpu_compatibility`) VALUES
(1, 'amd'),
(2, 'nvidia'),
(3, 'none'),
(4, 'универсальный');

-- --------------------------------------------------------

--
-- Структура таблицы `heatsink_type`
--

CREATE TABLE `heatsink_type` (
  `id` int(11) NOT NULL,
  `heatsink_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `heatsink_type`
--

INSERT INTO `heatsink_type` (`id`, `heatsink_type`) VALUES
(1, 'нет'),
(2, 'алюминий'),
(3, 'медь + алюминий');

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `model` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `model`) VALUES
(1, 'noctua'),
(2, 'be quiet'),
(3, 'arctic');

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`id`, `name`) VALUES
(1, 'SILENT WINGS 3 120MM '),
(2, 'SILENT WINGS 3 140MM '),
(3, 'DARK ROCK 3'),
(4, 'PURE ROCK'),
(5, 'NF-A9 PWM '),
(6, 'NF-F12 PWM '),
(7, 'NF-A14 FLX '),
(8, 'NH-U12S'),
(9, 'Freezer 33'),
(10, 'Accelero Mono Plus'),
(11, 'F9 TC'),
(12, 'F12 PWM');

-- --------------------------------------------------------

--
-- Структура таблицы `noise_level`
--

CREATE TABLE `noise_level` (
  `id` int(11) NOT NULL,
  `noise_level` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `noise_level`
--

INSERT INTO `noise_level` (`id`, `noise_level`) VALUES
(1, 'до 14 дБ'),
(2, 'до 18 дБ'),
(3, 'до 22 дБ');

-- --------------------------------------------------------

--
-- Структура таблицы `static_preasure`
--

CREATE TABLE `static_preasure` (
  `id` int(11) NOT NULL,
  `static_preasure` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `static_preasure`
--

INSERT INTO `static_preasure` (`id`, `static_preasure`) VALUES
(1, 'до 1,2 мм H2O'),
(2, 'до 1,6 мм H2O'),
(3, 'до 2,0 мм H2O');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appliance`
--
ALTER TABLE `appliance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bearing_type`
--
ALTER TABLE `bearing_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `connector_type`
--
ALTER TABLE `connector_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coolers`
--
ALTER TABLE `coolers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_manufacturer_idx` (`manufacturer`),
  ADD KEY `fk_models_idx` (`models`),
  ADD KEY `fk_usage_idx` (`appliance`),
  ADD KEY `fk_cpu_socket_idx` (`cpu_socket`),
  ADD KEY `fk_gpu_compatibility_idx` (`gpu_compatibility`),
  ADD KEY `fk_fan_size_idx` (`fan_size`),
  ADD KEY `fk_fan_speed_idx` (`fan_speed`),
  ADD KEY `fk_bearing_type_idx` (`bearing_type`),
  ADD KEY `fk_noise_level_idx` (`noise_level`),
  ADD KEY `fk_static_preasure_idx` (`static_preasure`),
  ADD KEY `fk_heatsink_type_idx` (`heatsink_type`),
  ADD KEY `fk_connector_type_idx` (`connector_type`);

--
-- Индексы таблицы `cpu_socket`
--
ALTER TABLE `cpu_socket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fan_size`
--
ALTER TABLE `fan_size`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fan_speed`
--
ALTER TABLE `fan_speed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gpu_compatibility`
--
ALTER TABLE `gpu_compatibility`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `heatsink_type`
--
ALTER TABLE `heatsink_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `noise_level`
--
ALTER TABLE `noise_level`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `static_preasure`
--
ALTER TABLE `static_preasure`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appliance`
--
ALTER TABLE `appliance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `bearing_type`
--
ALTER TABLE `bearing_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `connector_type`
--
ALTER TABLE `connector_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `coolers`
--
ALTER TABLE `coolers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `cpu_socket`
--
ALTER TABLE `cpu_socket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `fan_size`
--
ALTER TABLE `fan_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `fan_speed`
--
ALTER TABLE `fan_speed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `gpu_compatibility`
--
ALTER TABLE `gpu_compatibility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `heatsink_type`
--
ALTER TABLE `heatsink_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `noise_level`
--
ALTER TABLE `noise_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `static_preasure`
--
ALTER TABLE `static_preasure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coolers`
--
ALTER TABLE `coolers`
  ADD CONSTRAINT `fk_bearing_type` FOREIGN KEY (`bearing_type`) REFERENCES `bearing_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_connector_type` FOREIGN KEY (`connector_type`) REFERENCES `connector_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cpu_socket` FOREIGN KEY (`cpu_socket`) REFERENCES `cpu_socket` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fan_size` FOREIGN KEY (`fan_size`) REFERENCES `fan_size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fan_speed` FOREIGN KEY (`fan_speed`) REFERENCES `fan_speed` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gpu_compatibility` FOREIGN KEY (`gpu_compatibility`) REFERENCES `gpu_compatibility` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_heatsink_type` FOREIGN KEY (`heatsink_type`) REFERENCES `heatsink_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_manufacturer` FOREIGN KEY (`manufacturer`) REFERENCES `manufacturer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_models` FOREIGN KEY (`models`) REFERENCES `models` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_noise_level` FOREIGN KEY (`noise_level`) REFERENCES `noise_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_static_preasure` FOREIGN KEY (`static_preasure`) REFERENCES `static_preasure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usage` FOREIGN KEY (`appliance`) REFERENCES `appliance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
