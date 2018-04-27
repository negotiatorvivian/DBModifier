alter table recruit_user add column province varchar(100) default '' comment '省' after address;
alter table recruit_user add column city varchar(100) default '' comment '市' after province;
alter table recruit_user add column area varchar(100) default '' comment '区' after city;
