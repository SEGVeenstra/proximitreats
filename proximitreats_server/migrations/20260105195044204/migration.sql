BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shops" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text NOT NULL,
    "image" text,
    "ownerId" uuid NOT NULL
);

-- Indexes
CREATE INDEX "owner_id_idx" ON "shops" USING btree ("ownerId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shops"
    ADD CONSTRAINT "shops_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR proximitreats
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('proximitreats', '20260105195044204', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260105195044204', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20251208110420531-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110420531-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20251208110412389-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110412389-v3-0-0', "timestamp" = now();


COMMIT;
