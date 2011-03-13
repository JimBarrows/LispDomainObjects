------------------------------
-- pgDesigner 1.2.17
--
-- Project    : biz360
-- Date       : 03/12/2011 10:45:10.307
-- Description: 
------------------------------


-- Start Sequence's declaration
DROP SEQUENCE IF EXISTS "hibernate_sequence" CASCADE;
CREATE SEQUENCE "hibernate_sequence" INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 37 NO CYCLE;

-- End Sequence's declaration

-- Start Table's declaration
DROP TABLE IF EXISTS "caserole" CASCADE;
CREATE TABLE "caserole" (
"id" bigint NOT NULL,
"version" bigint,
"describedby_id" bigint,
"ofparty" bigint,
"rolefor_id" bigint
) WITH OIDS;
ALTER TABLE "caserole" ADD CONSTRAINT "caserole_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "caseroletype" CASCADE;
CREATE TABLE "caseroletype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "caseroletype" ADD CONSTRAINT "caseroletype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "caseroletype_description_key" ON "caseroletype" USING btree ("description");

DROP TABLE IF EXISTS "casestatustype" CASCADE;
CREATE TABLE "casestatustype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "casestatustype" ADD CONSTRAINT "casestatustype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "casestatustype_description_key" ON "casestatustype" USING btree ("description");

DROP TABLE IF EXISTS "communicationevent" CASCADE;
CREATE TABLE "communicationevent" (
"id" bigint NOT NULL,
"version" bigint,
"datetimeended" timestamp without time zone,
"datetimestarted" timestamp without time zone,
"note" text,
"inthecontextof_id" bigint,
"monitoredby_id" bigint,
"occursvia_id" bigint
) WITH OIDS;
ALTER TABLE "communicationevent" ADD CONSTRAINT "communicationevent_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "communicationevent_communicationeventpurpose" CASCADE;
CREATE TABLE "communicationevent_communicationeventpurpose" (
"communicationevent_id" bigint NOT NULL,
"categorizedby_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "communicationevent_communicationeventpurpo_categorizedby_id_key" ON "communicationevent_communicationeventpurpose" USING btree ("categorizedby_id");

DROP TABLE IF EXISTS "communicationevent_kase" CASCADE;
CREATE TABLE "communicationevent_kase" (
"encompassing_id" bigint NOT NULL,
"aspartof_id" bigint NOT NULL
) WITH OIDS;

DROP TABLE IF EXISTS "communicationeventpurpose" CASCADE;
CREATE TABLE "communicationeventpurpose" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"type" bytea
) WITH OIDS;
ALTER TABLE "communicationeventpurpose" ADD CONSTRAINT "communicationeventpurpose_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "communicationeventpurposetype" CASCADE;
CREATE TABLE "communicationeventpurposetype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "communicationeventpurposetype" ADD CONSTRAINT "communicationeventpurposetype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "communicationeventpurposetype_description_key" ON "communicationeventpurposetype" USING btree ("description");

DROP TABLE IF EXISTS "communicationeventrole" CASCADE;
CREATE TABLE "communicationeventrole" (
"id" bigint NOT NULL,
"version" bigint,
"describedby_id" bigint,
"forparty_id" bigint,
"communicationeventof" bigint,
"type_id" bigint
) WITH OIDS;
ALTER TABLE "communicationeventrole" ADD CONSTRAINT "communicationeventrole_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "communicationeventroletype" CASCADE;
CREATE TABLE "communicationeventroletype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "communicationeventroletype" ADD CONSTRAINT "communicationeventroletype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "communicationeventroletype_description_key" ON "communicationeventroletype" USING btree ("description");

DROP TABLE IF EXISTS "communicationeventstatustype" CASCADE;
CREATE TABLE "communicationeventstatustype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "communicationeventstatustype" ADD CONSTRAINT "communicationeventstatustype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "communicationeventstatustype_description_key" ON "communicationeventstatustype" USING btree ("description");

DROP TABLE IF EXISTS "communicationeventworkeffort" CASCADE;
CREATE TABLE "communicationeventworkeffort" (
"id" bigint NOT NULL,
"version" bigint,
"description" text,
"eventfrom_id" bigint
) WITH OIDS;
ALTER TABLE "communicationeventworkeffort" ADD CONSTRAINT "communicationeventworkeffort_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "contactmechanism" CASCADE;
CREATE TABLE "contactmechanism" (
"dtype" character varying(31) NOT NULL,
"id" bigint NOT NULL,
"version" bigint,
"address" text,
"directions" text,
"acceptsdata" boolean,
"acceptsfaxes" boolean,
"acceptstextmessages" boolean,
"areacode" character varying(255),
"contactnumber" character varying(255),
"countrycode" character varying(255),
"extension" character varying(255)
) WITH OIDS;
ALTER TABLE "contactmechanism" ADD CONSTRAINT "contactmechanism_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "contactmechanism_partypostaladdress" CASCADE;
CREATE TABLE "contactmechanism_partypostaladdress" (
"contactmechanism_id" bigint NOT NULL,
"locationfor_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "contactmechanism_partypostaladdress_locationfor_id_key" ON "contactmechanism_partypostaladdress" USING btree ("locationfor_id");

DROP TABLE IF EXISTS "contactmechanismpurposetype" CASCADE;
CREATE TABLE "contactmechanismpurposetype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "contactmechanismpurposetype" ADD CONSTRAINT "contactmechanismpurposetype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "contactmechanismpurposetype_description_key" ON "contactmechanismpurposetype" USING btree ("description");

DROP TABLE IF EXISTS "facility" CASCADE;
CREATE TABLE "facility" (
"dtype" character varying(31) NOT NULL,
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255),
"partof_id" bigint
) WITH OIDS;
ALTER TABLE "facility" ADD CONSTRAINT "facility_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "facility_facility" CASCADE;
CREATE TABLE "facility_facility" (
"facility_id" bigint NOT NULL,
"madeupof_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "facility_facility_madeupof_id_key" ON "facility_facility" USING btree ("madeupof_id");

DROP TABLE IF EXISTS "facility_facilitycontactmechanism" CASCADE;
CREATE TABLE "facility_facilitycontactmechanism" (
"facility_id" bigint NOT NULL,
"contactedvia_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "facility_facilitycontactmechanism_contactedvia_id_key" ON "facility_facilitycontactmechanism" USING btree ("contactedvia_id");

DROP TABLE IF EXISTS "facility_facilityrole" CASCADE;
CREATE TABLE "facility_facilityrole" (
"facility_id" bigint NOT NULL,
"involving_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "facility_facilityrole_involving_id_key" ON "facility_facilityrole" USING btree ("involving_id");

DROP TABLE IF EXISTS "facilitycontactmechanism" CASCADE;
CREATE TABLE "facilitycontactmechanism" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"mechansimtocontact_id" bigint,
"specifiedvia_id" bigint
) WITH OIDS;
ALTER TABLE "facilitycontactmechanism" ADD CONSTRAINT "facilitycontactmechanism_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "facilityrole" CASCADE;
CREATE TABLE "facilityrole" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"describedby_id" bigint,
"forparty_id" bigint,
"offacility" bigint
) WITH OIDS;
ALTER TABLE "facilityrole" ADD CONSTRAINT "facilityrole_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "facilityroletype" CASCADE;
CREATE TABLE "facilityroletype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "facilityroletype" ADD CONSTRAINT "facilityroletype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "facilityroletype_description_key" ON "facilityroletype" USING btree ("description");

DROP TABLE IF EXISTS "geographicboundary" CASCADE;
CREATE TABLE "geographicboundary" (
"id" bigint NOT NULL,
"abbreviation" character varying(255),
"code" character varying(255),
"name" character varying(255),
"version" bigint,
"type_id" bigint
) WITH OIDS;
ALTER TABLE "geographicboundary" ADD CONSTRAINT "geographicboundary_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "geographicboundary_contactmechanism" CASCADE;
CREATE TABLE "geographicboundary_contactmechanism" (
"within_id" bigint NOT NULL,
"boundaryfor_id" bigint NOT NULL
) WITH OIDS;

DROP TABLE IF EXISTS "geographicboundary_geographicboundary" CASCADE;
CREATE TABLE "geographicboundary_geographicboundary" (
"geographicboundary_id" bigint NOT NULL,
"within_id" bigint NOT NULL,
"contains_id" bigint NOT NULL
) WITH OIDS;
CREATE UNIQUE INDEX "geographicboundary_geographicboundary_contains_id_key" ON "geographicboundary_geographicboundary" USING btree ("contains_id");
CREATE UNIQUE INDEX "geographicboundary_geographicboundary_within_id_key" ON "geographicboundary_geographicboundary" USING btree ("within_id");

DROP TABLE IF EXISTS "geographicboundarytype" CASCADE;
CREATE TABLE "geographicboundarytype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "geographicboundarytype" ADD CONSTRAINT "geographicboundarytype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "geographicboundarytype_description_key" ON "geographicboundarytype" USING btree ("description");

DROP TABLE IF EXISTS "kase" CASCADE;
CREATE TABLE "kase" (
"id" bigint NOT NULL,
"version" bigint,
"description" text,
"start" timestamp without time zone,
"inthestateof_id" bigint
) WITH OIDS;
ALTER TABLE "kase" ADD CONSTRAINT "kase_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "party" CASCADE;
CREATE TABLE "party" (
"type" character varying(31) NOT NULL,
"id" serial NOT NULL,
"version" bigint,
"name" character varying(255),
"firstname" character varying(255),
"lastname" character varying(255),
"middlename" character varying(255)
) WITH;
ALTER TABLE "party" ADD CONSTRAINT "party_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partyclassification" CASCADE;
CREATE TABLE "partyclassification" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"classificationfor_id" bigint
) WITH OIDS;
ALTER TABLE "partyclassification" ADD CONSTRAINT "partyclassification_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partycontactmechanism" CASCADE;
CREATE TABLE "partycontactmechanism" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"comment" text,
"solicitable" boolean NOT NULL,
"mechanismtocontact_id" bigint,
"specifiedfor_id" bigint,
"specifiedvia_id" bigint
) WITH OIDS;
ALTER TABLE "partycontactmechanism" ADD CONSTRAINT "partycontactmechanism_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partycontactmechanismpurpose" CASCADE;
CREATE TABLE "partycontactmechanismpurpose" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"definedvia_id" bigint,
"usedwithin_id" bigint
) WITH OIDS;
ALTER TABLE "partycontactmechanismpurpose" ADD CONSTRAINT "partycontactmechanismpurpose_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partypostaladdress" CASCADE;
CREATE TABLE "partypostaladdress" (
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"comment" text,
"locatedat_id" bigint,
"specifiedfor_id" bigint
) WITH OIDS;
ALTER TABLE "partypostaladdress" ADD CONSTRAINT "partypostaladdress_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partyrelationship" CASCADE;
CREATE TABLE "partyrelationship" (
"dtype" character varying(31) NOT NULL,
"id" bigint NOT NULL,
"version" bigint,
"fromdate" date,
"thrudate" date,
"comment" character varying(255),
"relationshipfrom" bytea,
"relationshipto" bytea,
"priority_id" bigint,
"relationshipfrom_id" bigint NOT NULL,
"relationshipto_id" bigint NOT NULL,
"status_id" bigint,
"dueto_id" bigint
) WITH OIDS;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "partyrelationship_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partyrole" CASCADE;
CREATE TABLE "partyrole" (
"id" serial,
"version" bigint,
"fromdate" date,
"thrudate" date,
"rolefor_id" bigint,
"type_id" bigint
) WITH OIDS;
ALTER TABLE "partyrole" ADD CONSTRAINT "partyrole_pkey" PRIMARY KEY("id");

DROP TABLE IF EXISTS "partyroletype" CASCADE;
CREATE TABLE "partyroletype" (
"id" serial,
"version" bigint,
"description" character varying(255) NOT NULL,
"parent" bigint
) WITH OIDS;
ALTER TABLE "partyroletype" ADD CONSTRAINT "partyroletype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "partyroletype_description_key" ON "partyroletype" USING btree ("description");

DROP TABLE IF EXISTS "prioritytype" CASCADE;
CREATE TABLE "prioritytype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "prioritytype" ADD CONSTRAINT "prioritytype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "prioritytype_description_key" ON "prioritytype" USING btree ("description");

DROP TABLE IF EXISTS "statustype" CASCADE;
CREATE TABLE "statustype" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "statustype" ADD CONSTRAINT "statustype_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "statustype_description_key" ON "statustype" USING btree ("description");

DROP TABLE IF EXISTS "terminationreason" CASCADE;
CREATE TABLE "terminationreason" (
"id" bigint NOT NULL,
"version" bigint,
"description" character varying(255) NOT NULL
) WITH OIDS;
ALTER TABLE "terminationreason" ADD CONSTRAINT "terminationreason_pkey" PRIMARY KEY("id");
CREATE UNIQUE INDEX "terminationreason_description_key" ON "terminationreason" USING btree ("description");

-- End Table's declaration

-- Start Relation's declaration
ALTER TABLE "caserole" DROP CONSTRAINT "fk51ebbe67adb9224" CASCADE;
ALTER TABLE "caserole" ADD CONSTRAINT "fk51ebbe67adb9224" FOREIGN KEY ("describedby_id") REFERENCES "caseroletype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "kase" DROP CONSTRAINT "fk239248461bcb34" CASCADE;
ALTER TABLE "kase" ADD CONSTRAINT "fk239248461bcb34" FOREIGN KEY ("inthestateof_id") REFERENCES "casestatustype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent_communicationeventpurpose" DROP CONSTRAINT "fkf7c4b3fff5ac5ef4" CASCADE;
ALTER TABLE "communicationevent_communicationeventpurpose" ADD CONSTRAINT "fkf7c4b3fff5ac5ef4" FOREIGN KEY ("communicationevent_id") REFERENCES "communicationevent"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent_kase" DROP CONSTRAINT "fkbcb9992373d6705f" CASCADE;
ALTER TABLE "communicationevent_kase" ADD CONSTRAINT "fkbcb9992373d6705f" FOREIGN KEY ("encompassing_id") REFERENCES "communicationevent"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationeventrole" DROP CONSTRAINT "fk716bf71a53c61999" CASCADE;
ALTER TABLE "communicationeventrole" ADD CONSTRAINT "fk716bf71a53c61999" FOREIGN KEY ("communicationeventof") REFERENCES "communicationevent"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationeventworkeffort" DROP CONSTRAINT "fke5602f0175559234" CASCADE;
ALTER TABLE "communicationeventworkeffort" ADD CONSTRAINT "fke5602f0175559234" FOREIGN KEY ("eventfrom_id") REFERENCES "communicationevent"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent_communicationeventpurpose" DROP CONSTRAINT "fkf7c4b3ff8505b0f8" CASCADE;
ALTER TABLE "communicationevent_communicationeventpurpose" ADD CONSTRAINT "fkf7c4b3ff8505b0f8" FOREIGN KEY ("categorizedby_id") REFERENCES "communicationeventpurpose"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationeventrole" DROP CONSTRAINT "fk716bf71a2944836e" CASCADE;
ALTER TABLE "communicationeventrole" ADD CONSTRAINT "fk716bf71a2944836e" FOREIGN KEY ("type_id") REFERENCES "communicationeventroletype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationeventrole" DROP CONSTRAINT "fk716bf71aa5c0e5d8" CASCADE;
ALTER TABLE "communicationeventrole" ADD CONSTRAINT "fk716bf71aa5c0e5d8" FOREIGN KEY ("describedby_id") REFERENCES "communicationeventroletype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent" DROP CONSTRAINT "fk3612e48442528f54" CASCADE;
ALTER TABLE "communicationevent" ADD CONSTRAINT "fk3612e48442528f54" FOREIGN KEY ("monitoredby_id") REFERENCES "communicationeventstatustype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "contactmechanism_partypostaladdress" DROP CONSTRAINT "fk343ede49a2496597" CASCADE;
ALTER TABLE "contactmechanism_partypostaladdress" ADD CONSTRAINT "fk343ede49a2496597" FOREIGN KEY ("contactmechanism_id") REFERENCES "contactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facilitycontactmechanism" DROP CONSTRAINT "fk8bb433fc1c900b88" CASCADE;
ALTER TABLE "facilitycontactmechanism" ADD CONSTRAINT "fk8bb433fc1c900b88" FOREIGN KEY ("specifiedvia_id") REFERENCES "contactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary_contactmechanism" DROP CONSTRAINT "fkef862fd7ef0432b1" CASCADE;
ALTER TABLE "geographicboundary_contactmechanism" ADD CONSTRAINT "fkef862fd7ef0432b1" FOREIGN KEY ("boundaryfor_id") REFERENCES "contactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partycontactmechanism" DROP CONSTRAINT "fk8cde25ff1c900b88" CASCADE;
ALTER TABLE "partycontactmechanism" ADD CONSTRAINT "fk8cde25ff1c900b88" FOREIGN KEY ("specifiedvia_id") REFERENCES "contactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partypostaladdress" DROP CONSTRAINT "fk7ce2838312414a4b" CASCADE;
ALTER TABLE "partypostaladdress" ADD CONSTRAINT "fk7ce2838312414a4b" FOREIGN KEY ("locatedat_id") REFERENCES "contactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partycontactmechanismpurpose" DROP CONSTRAINT "fk383e821f18184d21" CASCADE;
ALTER TABLE "partycontactmechanismpurpose" ADD CONSTRAINT "fk383e821f18184d21" FOREIGN KEY ("definedvia_id") REFERENCES "contactmechanismpurposetype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility" DROP CONSTRAINT "fk21b8d2c38dbeffbc" CASCADE;
ALTER TABLE "facility" ADD CONSTRAINT "fk21b8d2c38dbeffbc" FOREIGN KEY ("partof_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facility" DROP CONSTRAINT "fkc7229cbfc721c75f" CASCADE;
ALTER TABLE "facility_facility" ADD CONSTRAINT "fkc7229cbfc721c75f" FOREIGN KEY ("madeupof_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facility" DROP CONSTRAINT "fkc7229cbfd8663f83" CASCADE;
ALTER TABLE "facility_facility" ADD CONSTRAINT "fkc7229cbfd8663f83" FOREIGN KEY ("facility_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facilitycontactmechanism" DROP CONSTRAINT "fk5a285f8d8663f83" CASCADE;
ALTER TABLE "facility_facilitycontactmechanism" ADD CONSTRAINT "fk5a285f8d8663f83" FOREIGN KEY ("facility_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facilityrole" DROP CONSTRAINT "fk71f19d5d8663f83" CASCADE;
ALTER TABLE "facility_facilityrole" ADD CONSTRAINT "fk71f19d5d8663f83" FOREIGN KEY ("facility_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facilitycontactmechanism" DROP CONSTRAINT "fk8bb433fc3d3519ce" CASCADE;
ALTER TABLE "facilitycontactmechanism" ADD CONSTRAINT "fk8bb433fc3d3519ce" FOREIGN KEY ("mechansimtocontact_id") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facilityrole" DROP CONSTRAINT "fk1fe2add915b298c6" CASCADE;
ALTER TABLE "facilityrole" ADD CONSTRAINT "fk1fe2add915b298c6" FOREIGN KEY ("offacility") REFERENCES "facility"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facilitycontactmechanism" DROP CONSTRAINT "fk5a285f87c72f6f0" CASCADE;
ALTER TABLE "facility_facilitycontactmechanism" ADD CONSTRAINT "fk5a285f87c72f6f0" FOREIGN KEY ("contactedvia_id") REFERENCES "facilitycontactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facility_facilityrole" DROP CONSTRAINT "fk71f19d53c95af22" CASCADE;
ALTER TABLE "facility_facilityrole" ADD CONSTRAINT "fk71f19d53c95af22" FOREIGN KEY ("involving_id") REFERENCES "facilityrole"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facilityrole" DROP CONSTRAINT "fk1fe2add9420fd6e6" CASCADE;
ALTER TABLE "facilityrole" ADD CONSTRAINT "fk1fe2add9420fd6e6" FOREIGN KEY ("describedby_id") REFERENCES "facilityroletype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary_contactmechanism" DROP CONSTRAINT "fkef862fd7ca7ed0ee" CASCADE;
ALTER TABLE "geographicboundary_contactmechanism" ADD CONSTRAINT "fkef862fd7ca7ed0ee" FOREIGN KEY ("within_id") REFERENCES "geographicboundary"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary_geographicboundary" DROP CONSTRAINT "fk725a50ff365829f8" CASCADE;
ALTER TABLE "geographicboundary_geographicboundary" ADD CONSTRAINT "fk725a50ff365829f8" FOREIGN KEY ("geographicboundary_id") REFERENCES "geographicboundary"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary_geographicboundary" DROP CONSTRAINT "fk725a50ff9ff432ba" CASCADE;
ALTER TABLE "geographicboundary_geographicboundary" ADD CONSTRAINT "fk725a50ff9ff432ba" FOREIGN KEY ("contains_id") REFERENCES "geographicboundary"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary_geographicboundary" DROP CONSTRAINT "fk725a50ffca7ed0ee" CASCADE;
ALTER TABLE "geographicboundary_geographicboundary" ADD CONSTRAINT "fk725a50ffca7ed0ee" FOREIGN KEY ("within_id") REFERENCES "geographicboundary"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "geographicboundary" DROP CONSTRAINT "fk2a6717e11fd2eb99" CASCADE;
ALTER TABLE "geographicboundary" ADD CONSTRAINT "fk2a6717e11fd2eb99" FOREIGN KEY ("type_id") REFERENCES "geographicboundarytype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "caserole" DROP CONSTRAINT "fk51ebbe6706e50d1" CASCADE;
ALTER TABLE "caserole" ADD CONSTRAINT "fk51ebbe6706e50d1" FOREIGN KEY ("rolefor_id") REFERENCES "kase"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent_kase" DROP CONSTRAINT "fkbcb99923b4866508" CASCADE;
ALTER TABLE "communicationevent_kase" ADD CONSTRAINT "fkbcb99923b4866508" FOREIGN KEY ("aspartof_id") REFERENCES "kase"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "caserole" DROP CONSTRAINT "fk51ebbe6a8f708d3" CASCADE;
ALTER TABLE "caserole" ADD CONSTRAINT "fk51ebbe6a8f708d3" FOREIGN KEY ("ofparty") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationeventrole" DROP CONSTRAINT "fk716bf71a91114641" CASCADE;
ALTER TABLE "communicationeventrole" ADD CONSTRAINT "fk716bf71a91114641" FOREIGN KEY ("forparty_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "facilityrole" DROP CONSTRAINT "fk1fe2add991114641" CASCADE;
ALTER TABLE "facilityrole" ADD CONSTRAINT "fk1fe2add991114641" FOREIGN KEY ("forparty_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyclassification" DROP CONSTRAINT "fk3608d84c750de11b" CASCADE;
ALTER TABLE "partyclassification" ADD CONSTRAINT "fk3608d84c750de11b" FOREIGN KEY ("classificationfor_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partycontactmechanism" DROP CONSTRAINT "fk8cde25ff9951dd92" CASCADE;
ALTER TABLE "partycontactmechanism" ADD CONSTRAINT "fk8cde25ff9951dd92" FOREIGN KEY ("mechanismtocontact_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partypostaladdress" DROP CONSTRAINT "fk7ce28383d801eb65" CASCADE;
ALTER TABLE "partypostaladdress" ADD CONSTRAINT "fk7ce28383d801eb65" FOREIGN KEY ("specifiedfor_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyrole" DROP CONSTRAINT "fkcfd4c5c7d5181ab" CASCADE;
ALTER TABLE "partyrole" ADD CONSTRAINT "fkcfd4c5c7d5181ab" FOREIGN KEY ("rolefor_id") REFERENCES "party"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent" DROP CONSTRAINT "fk3612e484dd41dc50" CASCADE;
ALTER TABLE "communicationevent" ADD CONSTRAINT "fk3612e484dd41dc50" FOREIGN KEY ("occursvia_id") REFERENCES "partycontactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partycontactmechanismpurpose" DROP CONSTRAINT "fk383e821fbaa3d6ef" CASCADE;
ALTER TABLE "partycontactmechanismpurpose" ADD CONSTRAINT "fk383e821fbaa3d6ef" FOREIGN KEY ("usedwithin_id") REFERENCES "partycontactmechanism"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "contactmechanism_partypostaladdress" DROP CONSTRAINT "fk343ede49c1cc79eb" CASCADE;
ALTER TABLE "contactmechanism_partypostaladdress" ADD CONSTRAINT "fk343ede49c1cc79eb" FOREIGN KEY ("locationfor_id") REFERENCES "partypostaladdress"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "communicationevent" DROP CONSTRAINT "fk3612e484f72c46a" CASCADE;
ALTER TABLE "communicationevent" ADD CONSTRAINT "fk3612e484f72c46a" FOREIGN KEY ("inthecontextof_id") REFERENCES "partyrelationship"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partycontactmechanism" DROP CONSTRAINT "fk8cde25ff2b6b8dfb" CASCADE;
ALTER TABLE "partycontactmechanism" ADD CONSTRAINT "fk8cde25ff2b6b8dfb" FOREIGN KEY ("specifiedfor_id") REFERENCES "partyrole"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyrelationship" DROP CONSTRAINT "fkbfacfc1e4fc66c92" CASCADE;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "fkbfacfc1e4fc66c92" FOREIGN KEY ("relationshipfrom_id") REFERENCES "partyrole"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyrelationship" DROP CONSTRAINT "fkbfacfc1ec841ca21" CASCADE;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "fkbfacfc1ec841ca21" FOREIGN KEY ("relationshipto_id") REFERENCES "partyrole"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

alter table "partyroletype" drop constraint "party_role_type_parent" cascade;
alter table "partyroletype" add constraint "party_role_type_parent" foreign key ("parent") references "party_role_type_parent" on update restrict on delete restrict;

ALTER TABLE "partyrole" DROP CONSTRAINT "fkcfd4c5c8f58e694" CASCADE;
ALTER TABLE "partyrole" ADD CONSTRAINT  "fkcfd4c5c8f58e694" FOREIGN KEY ("type_id") REFERENCES "partyroletype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


ALTER TABLE "partyrelationship" DROP CONSTRAINT "fkbfacfc1e6a981c48" CASCADE;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "fkbfacfc1e6a981c48" FOREIGN KEY ("priority_id") REFERENCES "prioritytype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyrelationship" DROP CONSTRAINT "fkbfacfc1ef7235788" CASCADE;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "fkbfacfc1ef7235788" FOREIGN KEY ("status_id") REFERENCES "statustype"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE "partyrelationship" DROP CONSTRAINT "fkbfacfc1ef5a0971f" CASCADE;
ALTER TABLE "partyrelationship" ADD CONSTRAINT "fkbfacfc1ef5a0971f" FOREIGN KEY ("dueto_id") REFERENCES "terminationreason"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;

-- End Relation's declaration

