create table shopping_users (
    id int auto_increment primary key comment '自增主键',
    nick_name varchar(100) default '' comment '用户昵称',
    password varchar(20) default '' comment '用户密码',
    age int default 0 comment '年龄',
    gender int default 0 comment '0:男, 1:女',
    occupation int default 1 comment '职业',
    city varchar(10) default 'A' comment '城市类别',
    years varchar(10) default '0' comment '在当前城市呆的时间',
    marital_status int default 0 comment '婚姻状态,0:未婚, 1:已婚',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '创建时间',
    status int default 1 comment '状态,1:合法, 0:非法'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;