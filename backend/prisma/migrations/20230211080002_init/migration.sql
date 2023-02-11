-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Todo" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "task" TEXT NOT NULL DEFAULT '',
    "isDone" BOOLEAN NOT NULL DEFAULT false,
    "handNotes" TEXT NOT NULL DEFAULT '',
    "description" TEXT NOT NULL DEFAULT '',
    "test" TEXT NOT NULL DEFAULT ''
);
INSERT INTO "new_Todo" ("createdAt", "description", "handNotes", "id", "isDone", "task", "updatedAt") SELECT "createdAt", "description", "handNotes", "id", "isDone", "task", "updatedAt" FROM "Todo";
DROP TABLE "Todo";
ALTER TABLE "new_Todo" RENAME TO "Todo";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
