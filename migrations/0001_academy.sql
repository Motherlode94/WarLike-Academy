-- WarLike Academy / Cloudflare D1 — migration 0001.
-- Exécuter sur une base dédiée uniquement après avoir configuré l'API authentifiée.
PRAGMA foreign_keys = ON;
CREATE TABLE IF NOT EXISTS academy_courses (
 id TEXT PRIMARY KEY CHECK(length(id) BETWEEN 1 AND 80),
 slug TEXT NOT NULL UNIQUE,
 title TEXT NOT NULL CHECK(length(title) BETWEEN 1 AND 200),
 description TEXT NOT NULL DEFAULT '',
 status TEXT NOT NULL DEFAULT 'draft' CHECK(status IN ('draft','published','archived')),
 owner_member_id TEXT NOT NULL,
 created_at TEXT NOT NULL DEFAULT (datetime('now')),
 updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE TABLE IF NOT EXISTS academy_lessons (
 id TEXT PRIMARY KEY,
 course_id TEXT NOT NULL REFERENCES academy_courses(id) ON DELETE CASCADE,
 position INTEGER NOT NULL CHECK(position >= 0),
 title TEXT NOT NULL,
 content TEXT NOT NULL DEFAULT '',
 quiz_json TEXT CHECK(quiz_json IS NULL OR json_valid(quiz_json)),
 created_at TEXT NOT NULL DEFAULT (datetime('now')),
 UNIQUE(course_id, position)
);
CREATE TABLE IF NOT EXISTS academy_enrollments (
 member_id TEXT NOT NULL,
 course_id TEXT NOT NULL REFERENCES academy_courses(id) ON DELETE CASCADE,
 enrolled_at TEXT NOT NULL DEFAULT (datetime('now')),
 PRIMARY KEY(member_id,course_id)
);
CREATE TABLE IF NOT EXISTS academy_progress (
 member_id TEXT NOT NULL,
 lesson_id TEXT NOT NULL REFERENCES academy_lessons(id) ON DELETE CASCADE,
 completed_at TEXT NOT NULL DEFAULT (datetime('now')),
 score INTEGER NOT NULL CHECK(score BETWEEN 0 AND 100),
 PRIMARY KEY(member_id,lesson_id)
);
CREATE INDEX IF NOT EXISTS idx_academy_course_owner ON academy_courses(owner_member_id,status);
CREATE INDEX IF NOT EXISTS idx_academy_lessons_course ON academy_lessons(course_id,position);
CREATE INDEX IF NOT EXISTS idx_academy_progress_member ON academy_progress(member_id);
