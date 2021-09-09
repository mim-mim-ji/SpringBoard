-- 게시판 테이블 생성
create table mvc_board(
    board_no number PRIMARY key,
    title VARCHAR2(100) not null,
    content VARCHAR2(300) not null,
    writer VARCHAR2(50) not null,
    reg_date Date default sysdate,
    view_cnt number default 0
);

--board_no에 대한 시퀀스 객체 생성
create sequence board_seq
    start with 1
    INCREMENT by 1
    MAXVALUE 1000
    NOCYCLE
    nocache;
    