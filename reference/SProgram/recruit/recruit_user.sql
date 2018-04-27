alter table recruit_user add column disease int default 0 comment '过往病史';
alter table recruit_user add column pregnant int default 0 comment '怀孕相关';
alter table recruit_user add column sport int default 0 comment '运动相关';
alter table recruit_user add column diet int default 0 comment '饮食相关';

alter table recruit_user add column from_campaign varchar(255) default '' after land_from;
