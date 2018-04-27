create table coach_wage (
     id int auto_increment comment '自增主键',
     camp_id int default 0 comment '班级id',
     camp_name varchar(100) default '' comment '班级名称',
     camp_type int default 0 comment '班级类型',
     camp_starttime int default 0 comment '开始时间',
     camp_endtime int default 0 comment '结束时间',
     coach_name varchar(100) default '' comment '教练名称',
     member_count int default 0 comment '班级人数',
     trans_count int default 0 comment '转化人数',
     trans_rate float default 0 comment '转化率',
     base_wage float default 0 comment '基本工资',
     extra_wage float default 0 comment '考核工资',
     wage_state int default 0 comment '工资状态',
     comment varchar(100) default '' comment '备注',
     status int default 1 comment '0:无效 1:有效',
     update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
     create_time datetime default current_timestamp comment '创建时间',
     primary key (id),
     unique uni_camp_id (camp_id)
);

alter table coach_wage add column pay_count int default 0 comment '付款人数' after member_count;
alter table coach_wage add column coach_realname varchar(100) default '' comment '教练实名' after coach_name;
