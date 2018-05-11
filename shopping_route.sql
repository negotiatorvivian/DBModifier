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
    update_time int default 0 comment '更新时间',
    status int default 1 comment '状态,1:合法, 0:非法'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table shopping_goods (
    id int auto_increment primary key comment '自增主键',
    trade_name varchar(100) default '' comment '商品名称',
    description varchar(256) default '' comment '商品描述',
    category int default 1 comment '所属类别',
    price int default 0 comment '商品价格',
    latitude float default 0.0 comment '所在位置经度',
    longitude float default 0.0 comment '所在位置纬度',
    features varchar(100) default '' comment '特征词',
    score float default 0.0 comment '用户打分',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '状态,1:合法, 0:非法'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table categories (
    id int auto_increment primary key comment '自增主键',
    cat_id int default 0 comment '目录id',
    cat_name varchar(50) default '' comment '类别名称',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '状态,1:合法, 0:非法'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;

alter table categories add column clicks int default 0 comment '用户偏好的类别计数' after cat_name;


create table nagetive_samples (
    id int auto_increment primary key comment '自增主键',
    age int default 0 comment '年龄',
    gender int default 0 comment '0:男, 1:女',
    occupation int default 1 comment '职业',
    city varchar(10) default 'A' comment '城市类别',
    years varchar(10) default '0' comment '在当前城市呆的时间',
    marital_status int default 0 comment '婚姻状态,0:未婚, 1:已婚',
    prefer_cats varchar(20) default '' comment '用户喜欢的类别',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '状态,1:合法, 0:非法'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;