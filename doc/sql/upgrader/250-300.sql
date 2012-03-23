alter table stories add column iteration_id integer DEFAULT NULL;

alter table stories add CONSTRAINT `FK_iteration_id` FOREIGN KEY (`iteration_id`) REFERENCES `backlogs` (`id`);

alter table stories_AUD add column iteration_id integer DEFAULT NULL;

alter table stories modify column backlog_id integer DEFAULT NULL;

INSERT INTO settings (`name`, `value`, `description`) VALUES ('AgilefantDatabaseVersion', '300', 'Agilefant database version') ON DUPLICATE KEY UPDATE `value`="300";
ALTER TABLE users ADD COLUMN admin bit DEFAULT 1 AFTER id;
create table team_product (Team_id integer not null, Product_id integer not null) ENGINE=InnoDB;
alter table team_product add index FK65CE090D745BA992 (Team_id), add constraint FK65CE090D745BA992 foreign key (Team_id) references teams (id);
alter table team_product add index FK65CE090DA7FE2362 (Product_id), add constraint FK65CE090DA7FE2362 foreign key (Product_id) references backlogs (id);
ALTER TABLE backlogs ADD COLUMN readonlyToken varchar(255) unique;
INSERT INTO users (admin, loginName, enabled, recentItemsNumberOfWeeks) VALUES (0, "readonly", 1, 0);
