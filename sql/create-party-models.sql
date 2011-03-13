-- The varioud type a party can be
drop type if exists "party_type" cascade;
create type party_type as enum( 'organization', 'person');

-- The roles a party can play
DROP TABLE IF EXISTS "roles" CASCADE;
CREATE TABLE "roles" (
"id" bigserial,
"version" bigint,
"description" character varying(255) NOT NULL,
"parent" bigint
);
ALTER TABLE "roles" ADD CONSTRAINT "roles_pk" PRIMARY KEY("id");
CREATE UNIQUE INDEX "roles_description_key" ON "roles" USING btree ("description");
ALTER TABLE "roles" ADD  CONSTRAINT "role_parent_fk" FOREIGN KEY ("parent") REFERENCES "roles"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


-- The relationships a party can have
drop table if exists "relationships" cascade;
create table "relationships" (
	"id" bigserial not null,
	"version" bigint,
	"description" character varying (255) not null,
	"parent" bigint
);
alter table "relationships" add constraint "relationships_pk" primary key ("id");
CREATE UNIQUE INDEX "relationship_description" ON "relationships" ("description");
ALTER TABLE "relationships" ADD CONSTRAINT "relationship_parent_fk" FOREIGN KEY ("parent") REFERENCES "relationships"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--The party (person, or organization)
DROP TABLE IF EXISTS "parties" CASCADE;
CREATE TABLE "parties" (
"id" bigserial NOT NULL,
"version" bigint,
"type" party_type NOT NULL,
"name" character varying(255),
"first_name" character varying(255),
"last_name" character varying(255),
"middle_name" character varying(255)
);
ALTER TABLE "parties" ADD CONSTRAINT "parties_pk" PRIMARY KEY("id");

--the roels the party is playing
DROP TABLE IF EXISTS "party_role" CASCADE;
CREATE TABLE "party_role" (
"id" bigserial,
"version" bigint,
"role_id" bigint not null,
"party_id" bigint not null,
"from_date" date default now(),
"thru_date" date
);
ALTER TABLE "party_role" ADD CONSTRAINT "party_role_pk" PRIMARY KEY("id");
alter table "party_role" add constraint "role_id_fk" foreign key("role_id") references "roles"("id") on update restrict on delete restrict;
alter table "party_role" add constraint "party_id_fk" foreign key("party_id") references "parties"("id") on update restrict on delete restrict;

--The relationships the party is involved in
DROP TABLE IF EXISTS "parties_relationships" CASCADE;
CREATE TABLE "parties_relationships" (
"id" bigserial NOT NULL,
"version" bigint,
"relationship_id" bigint not null,
"from_party_role_id" bigint NOT NULL,
"to_party_role_id" bigint NOT NULL,
"from_date" date,
"thru_date" date,
"comment" character varying(255),
"priority_id" bigint,
"status_id" bigint,
"dueto_id" bigint
);
ALTER TABLE "parties_relationships" ADD  CONSTRAINT "parties_relationships_pk" PRIMARY KEY("id");
ALTER TABLE "parties_relationships" ADD  CONSTRAINT "parties_relationships_fk" FOREIGN KEY ("relationship_id") REFERENCES "relationships"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE "parties_relationships" ADD  CONSTRAINT "from_party_role_fk" FOREIGN KEY ("from_party_role_id") REFERENCES "party_role"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE "parties_relationships" ADD  CONSTRAINT "to_party_role_fk" FOREIGN KEY ("to_party_role_id") REFERENCES "party_role"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;
