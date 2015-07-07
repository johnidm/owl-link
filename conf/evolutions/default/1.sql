# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table collectlink (
  id                        bigint not null,
  link                      varchar(80),
  signedup                  timestamp,
  constraint pk_collectlink primary key (id))
;

create table contact (
  id                        bigint not null,
  firstname                 varchar(30),
  lastname                  varchar(50),
  email                     varchar(100),
  site                      varchar(80),
  message                   varchar(1000),
  signedup                  timestamp,
  constraint pk_contact primary key (id))
;

create table newsletter (
  id                        bigint not null,
  name                      varchar(80),
  email                     varchar(100),
  subscribe                 varchar(1),
  signedup                  timestamp,
  constraint pk_newsletter primary key (id))
;

create table notification_newsletter (
  id                        bigint not null,
  notification              timestamp,
  constraint pk_notification_newsletter primary key (id))
;

create sequence collectlink_seq;

create sequence contact_seq;

create sequence newsletter_seq;

create sequence notification_newsletter_seq;




# --- !Downs

drop table if exists collectlink cascade;

drop table if exists contact cascade;

drop table if exists newsletter cascade;

drop table if exists notification_newsletter cascade;

drop sequence if exists collectlink_seq;

drop sequence if exists contact_seq;

drop sequence if exists newsletter_seq;

drop sequence if exists notification_newsletter_seq;

