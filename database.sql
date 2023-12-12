CREATE TABLE tb_categories (
	cat_id SERIAL NOT NULL PRIMARY KEY,
	cat_name VARCHAR(50) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL
);

CREATE TABLE tb_posts (
	post_id SERIAL NOT NULL PRIMARY KEY,
	post_id_cat INT NOT NULL,
	post_title VARCHAR(100) NOT NULL,
	post_text TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL
);

CREATE TABLE tb_users (
	user_id SERIAL NOT NULL PRIMARY KEY,
	user_email VARCHAR(50) NOT NULL,
	user_password VARCHAR(100) NOT NULL,
	user_full_name VARCHAR(100) DEFAULT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL,
	UNIQUE(user_email)
);

INSERT INTO
	tb_users (user_email, user_password, user_full_name)
VALUES
	(
		'admin@gmail.com',
		'$2y$10$qGWIBW/kzAqy28kCCVDbXeIx73j0zd5QGgoh0RV7Mz9YzKYnMJZGC',
		'Administrator'
	);