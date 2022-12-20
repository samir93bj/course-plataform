CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `name` varchar(45),
  `email` varchar(45),
  `password` varchar(45)
);

CREATE TABLE `profiles` (
  `id` int PRIMARY KEY,
  `title` varchar(45),
  `biography` text(1000),
  `website` varchar(45),
  `facebook` varchar(45),
  `linkedin` varchar(45),
  `youtube` varchar(45),
  `user_id` int
);

CREATE TABLE `courses` (
  `id` int PRIMARY KEY,
  `title` varchar(45),
  `subtitle` text(1000),
  `description` varchar(45),
  `status` int,
  `user_id` int,
  `level_id` int,
  `category_id` int,
  `prices_id` int
);

CREATE TABLE `course_user` (
  `user_id` int,
  `course_id` int,
  PRIMARY KEY (`user_id`, `course_id`)
);

CREATE TABLE `reviews` (
  `id` int PRIMARY KEY,
  `comment` varchar(45),
  `rating` varchar(45),
  `user_id` int,
  `course_id` int
);

CREATE TABLE `levels` (
  `id` int,
  `name` varchar(45)
);

CREATE TABLE `categories` (
  `id` int,
  `name` varchar(45)
);

CREATE TABLE `prices` (
  `id` int,
  `name` varchar(45),
  `value` int
);

CREATE TABLE `goals` (
  `id` int,
  `name` varchar(45),
  `course_id` int
);

CREATE TABLE `requeriments` (
  `id` int,
  `name` varchar(45),
  `course_id` int
);

CREATE TABLE `audiences` (
  `id` int,
  `name` varchar(45),
  `course_id` int
);

CREATE TABLE `sections` (
  `id` int,
  `name` varchar(45),
  `courses_id` int
);

CREATE TABLE `lessons` (
  `id` int,
  `name` varchar(45),
  `url` varchar(45),
  `iframe` varchar(45),
  `section_id` int,
  `plataform_id` int
);

CREATE TABLE `plataforms` (
  `id` int,
  `name` varchar(45)
);

CREATE TABLE `descriptions` (
  `id` int,
  `name` varchar(45),
  `lessons_id` int
);

CREATE TABLE `resources` (
  `id` int,
  `url` varchar(45),
  `resourceable_id` int,
  `resourceable_type` varchar(45)
);

CREATE TABLE `lesson_user` (
  `user_id` int,
  `lesson_id` int
);

CREATE TABLE `comments` (
  `id` int,
  `name` varchar(45),
  `commentable_id` int,
  `commentable_type` varchar(45),
  `user_id` int
);

CREATE TABLE `likes` (
  `id` int,
  `value` int,
  `likeable_id` int,
  `likeable_type` int,
  `user_id` int
);

CREATE TABLE `images` (
  `id` int,
  `url` varchar(45),
  `imageable_id` int,
  `imageable_type` varchar(45)
);

ALTER TABLE `users` ADD FOREIGN KEY (`id`) REFERENCES `profiles` (`user_id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

CREATE TABLE `courses_course_user` (
  `courses_id` int,
  `course_user_course_id` int,
  PRIMARY KEY (`courses_id`, `course_user_course_id`)
);

ALTER TABLE `courses_course_user` ADD FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`);

ALTER TABLE `courses_course_user` ADD FOREIGN KEY (`course_user_course_id`) REFERENCES `course_user` (`course_id`);


CREATE TABLE `users_course_user` (
  `users_id` int,
  `course_user_user_id` int,
  PRIMARY KEY (`users_id`, `course_user_user_id`)
);

ALTER TABLE `users_course_user` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

ALTER TABLE `users_course_user` ADD FOREIGN KEY (`course_user_user_id`) REFERENCES `course_user` (`user_id`);


ALTER TABLE `reviews` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `reviews` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`prices_id`) REFERENCES `prices` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`id`) REFERENCES `goals` (`course_id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`id`) REFERENCES `requeriments` (`course_id`);

ALTER TABLE `audiences` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`id`) REFERENCES `sections` (`courses_id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`plataform_id`) REFERENCES `plataforms` (`id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`id`) REFERENCES `descriptions` (`id`);

CREATE TABLE `users_lesson_user` (
  `users_id` int,
  `lesson_user_user_id` int,
  PRIMARY KEY (`users_id`, `lesson_user_user_id`)
);

ALTER TABLE `users_lesson_user` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

ALTER TABLE `users_lesson_user` ADD FOREIGN KEY (`lesson_user_user_id`) REFERENCES `lesson_user` (`user_id`);


CREATE TABLE `lessons_lesson_user` (
  `lessons_id` int,
  `lesson_user_lesson_id` int,
  PRIMARY KEY (`lessons_id`, `lesson_user_lesson_id`)
);

ALTER TABLE `lessons_lesson_user` ADD FOREIGN KEY (`lessons_id`) REFERENCES `lessons` (`id`);

ALTER TABLE `lessons_lesson_user` ADD FOREIGN KEY (`lesson_user_lesson_id`) REFERENCES `lesson_user` (`lesson_id`);


ALTER TABLE `comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

CREATE TABLE `likes_users` (
  `likes_user_id` int,
  `users_id` int,
  PRIMARY KEY (`likes_user_id`, `users_id`)
);

ALTER TABLE `likes_users` ADD FOREIGN KEY (`likes_user_id`) REFERENCES `likes` (`user_id`);

ALTER TABLE `likes_users` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

