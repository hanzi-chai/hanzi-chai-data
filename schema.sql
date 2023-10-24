DROP TABLE IF EXISTS repertoire;
DROP TABLE IF EXISTS form;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS repertoire (
	unicode INTEGER PRIMARY KEY,
	tygf INTEGER,
	gb2312 INTEGER,
	pinyin TEXT
);

CREATE TABLE IF NOT EXISTS form (
	unicode INTEGER PRIMARY KEY,
	name TEXT,
	default_type INTEGER,
	gf0014_id INTEGER,
	component TEXT,
	compound TEXT,
	slice TEXT
);

CREATE TABLE IF NOT EXISTS users (
	`id` VARCHAR(50) NOT NULL DEFAULT "" PRIMARY KEY,
	`name` VARCHAR(50) NOT NULL DEFAULT "",
	`email` VARCHAR(255) NOT NULL DEFAULT "",
	`password` VARCHAR(255) NOT NULL DEFAULT "",
	`avatar` VARCHAR(255) NOT NULL DEFAULT "",
	`role` TINYINT(1) NOT NULL DEFAULT 0,
	`state` TINYINT(1) NOT NULL DEFAULT 0
);
