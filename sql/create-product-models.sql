--This creates all the modes for product information

--The types of products
drop type if exists "product_type" cascade;
create type product_type as enum( 'good', 'service');

drop table if exists "products" cascade;
create table "products" (
			 "id" bigserial,
			 "name" character varying(255) not null,
			 "introduction_date" date default now(),
			 "sales_discontinuation_date" date,
			 "support_discontinuation_date" date,
			 "comment" character varying(255)
);
alter table "products" add constraint "products_pk" primary key ("id");
create unique index "product_name_index" on "name" using btree("name");

drop table if exists "goods" cascade;
create table "goods" (
			 
)inherits ("products");

drop table if exists "services" cascade;
create table "services" (
			 
)inherits ("products");

drop table if exists "product_categories" cascade;
create table "product_categories" (
			 "id" bigserial,
			 "description" character varying (255),
			 "parent" bigint
);

alter table "product_categories" add constraint "product_categories_pk" primary key ("id");
create unique index "product_categories_description_index" on "description" using btree("description");

drop table if exists "product_category_classification" cascade;
create table "product_category_classification" (
			 id bigserial,
			 product_id bigint not null,
			 product_category_id bigint not null,
			 from_date date default now() not null,
			 thru_date date,
			 is_primary boolean,
			 comment character varying (255)
);
alter table "product_category_classification" add constraint "p_c_c_pk" primary key("id");
alter table "product_category_classification" add constraint "product_id_fk" foreign key ("product_id")
			references "products"("id") on update restrict on delete restrict;
alter table "product_category_classification" add constraint "product_categories_id_fk" foreign key ("product_category_id")
			references "product_categories"("id") on update restrict on delete restrict;


