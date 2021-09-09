create table mvc_user(
    account VARCHAR(30) primary key,
    password VARCHAR(30) not null,
    name VARCHAR2(30) not null,
    reg_date TIMESTAMP default sysdate
);

-- 자동 로그인 관련 컬럼 추가
alter table mvc_user
add session_id 
varchar2(80) default 'none' not null ;

alter table mvc_user
add limit_time date;