--계정 생성
CREATE USER guci IDENTIFIED BY guci DEFAULT TABLESPACE
users TEMPORARY TABLESPACE temp PROFILE default;

GRANT CONNECT,Resource TO guci;
Grant create view,create synonym to guci;

--테이블 만들기

--회원 테이블
CREATE TABLE guci_user(
    userId VARCHAR2(30) NOT NULL,
    userPw VARCHAR2(50) NOT NULL,
    userName VARCHAR2(20) NOT NULL,
    userPhone VARCHAR2(50) NOT NULL,
    userEmail VARCHAR2(100) NOT NULL,
    userAddr1 VARCHAR2(100) NOT NULL,
    userAddr2 VARCHAR2(100) NOT NULL,
    regDate DATE DEFAULT SYSDATE,
    verifys NUMBER DEFAULT 0,
    CONSTRAINT PK_guci_user PRIMARY KEY(userId)
);

CREATE TABLE user_auth(
    userId VARCHAR2(30) PRIMARY KEY,
    auth VARCHAR2(50) NOT NULL,
    CONSTRAINT fk_user_auth FOREIGN KEY(userId) REFERENCES guci_user(userId)
);

-- 상품 테이블
create table guci_goods(
gdsNo NUMBER not null,
gdsName VARCHAR2(50) not null,
gdsPrice NUMBER not null,
gdsDes VARCHAR2(1000) null,
gdsSize VARCHAR2(20)not null,
gdsDate date DEFAULT sysdate,
gdsViews NUMBER DEFAULT 0,
cateCode VARCHAR2(20) NOT NULL,
primary key(gdsNo, gdsName)
);


--상품 2차분류 테이블
CREATE TABLE goods_category(
    cateCode VARCHAR2(20) NOT NULL,
    cateName VARCHAR2(50) NOT NULL,
    cateCodeRef VARCHAR2(30) NULL,
    CONSTRAINT pk_goods_category PRIMARY KEY(cateCode),
    FOREIGN KEY(cateCodeRef) REFERENCES goods_category(cateCode)
);

ALTER TABLE guci_goods ADD CONSTRAINT fk_goods_category
    FOREIGN KEY (cateCode) REFERENCES goods_category(cateCode);

CREATE SEQUENCE seq_guci_goods INCREMENT BY 1 START WITH 0 minvalue 0;

--리뷰
CREATE TABLE review (
    revNo NUMBER NOT NULL,
    gdsNo NUMBER NOT NULL,
    gdsName VARCHAR2(50) NOT NULL,
    userId VARCHAR2(30) NOT NULL,
    revCon VARCHAR2(1000) NOT NULL,
    revDate DATE DEFAULT SYSDATE,
    score NUMBER NOT NULL,
    CONSTRAINT pk_review PRIMARY KEY(revNo),
    CONSTRAINT fk_rev_gdsNo FOREIGN KEY (gdsNo,gdsname) REFERENCES guci_goods(gdsNo,gdsname),
    CONSTRAINT fk_rev_userId FOREIGN KEY (userId) REFERENCES guci_user(userId)
);

CREATE SEQUENCE seq_review INCREMENT BY 1 START WITH 0 MINVALUE 0;

--장바구니
create table guci_cart(
cartNo number not null,
userId VARCHAR2(30) not null,
gdsNo NUMBER not null,
gdsName VARCHAR2(30) NOT NULL,
cartStock NUMBER not null,
cartDate date DEFAULT sysdate,
primary key(cartNo, userId),
FOREIGN key (userId) REFERENCES guci_user(userId),
FOREIGN key (gdsNo, gdsName) REFERENCES guci_goods(gdsNo, gdsName)
);

CREATE SEQUENCE seq_guci_cart INCREMENT BY 1 START WITH 0 MINVALUE 0;

--주문 테이블
CREATE TABLE guci_order(
    orderId NUMBER NOT NULL,
    userId VARCHAR2(30) NOT NULL,
    orderRec VARCHAR2(20) NOT NULL,
    orderAddr1 VARCHAR2(100) NOT NULL,
    orderAddr2 VARCHAR2(100) NOT NULL,
    orderPhone VARCHAR2(30) NOT NULL,
    amount NUMBER NOT NULL,
    orderDate DATE DEFAULT SYSDATE,
    delivery VARCHAR2(20) NOT NULL,
    orderSize VARCHAR2(10) NOT NULL,
    gdsNo NUMBER,
    cartNo NUMBER,
    gdsName VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_guci_order PRIMARY KEY(orderId),
    CONSTRAINT fk_guci_order1 FOREIGN key (userId) REFERENCES guci_user(userId),
    CONSTRAINT fk_guci_order2 FOREIGN key (gdsNo, gdsName) REFERENCES guci_goods(gdsNo, gdsName),
    CONSTRAINT fk_guci_order3 FOREIGN key (carNo ,userId) REFERENCES guci_cart(cartNo, userId)
);

CREATE SEQUENCE seq_guci_order INCREMENT BY 1 START WITH 0 MINVALUE 0;

-- 주문 상세
Create table guci_order_detail(
    orderDetailNo   Number PRIMARY KEY,
    orderid     Number not null,
    orderStock  Number not null,
    FOREIGN key (orderId) REFERENCES guci_order(orderId)
);

CREATE SEQUENCE seq_order_detail INCREMENT BY 1 START WITH 0 MINVALUE 0;

-- 교환 환불
create table guci_process(
    proNo Number Primary key,
    proExchange VARCHAR2(10) NOT NULL,-- 0: default, 1: exchange, 2: refund
    proRefund  VARCHAR2(10) NOT NULL, -- 0: default, 1: processing, 2: accept, 3: reject
    reason      varchar2(500),
    proNum    number not null, -- 0:default 주문 개수 보다 작아야한다.
    orderId     number not null,
    constraint fk_exchange Foreign key(orderid) references guci_order(orderid)
);


CREATE SEQUENCE seq_process INCREMENT BY 1 START WITH 0 MINVALUE 0;

--문의하기 테이블
create table guci_question(
quesNo number PRIMARY key,
quesCate VARCHAR2(50) not null,
quesTit VARCHAR2(50) not null,
quesCon VARCHAR2(1000) not null,
quesWri VARCHAR2(30) not null,
quesDate date DEFAULT sysdate
);

CREATE SEQUENCE seq_guciquestion INCREMENT BY 1 START WITH 0 MINVALUE 0;

-- 댓글
create table reply(
replyNo number PRIMARY key,
quseNo number not null,
replyCon VARCHAR2(1000) not null,
replyWri VARCHAR2(30) default '관리자',
replyDate date default sysdate,
constraint fk_reply foreign key (quesNo) references guci_question(quesNo)
);

CREATE SEQUENCE seq_reply INCREMENT BY 1 START WITH 0 MINVALUE 0;

--FAQ 테이블
create table guci_faq(
faqNo number PRIMARY key,
faqCate VARCHAR2(50) not null,
faqTit VARCHAR2(50) not null,
faqCon VARCHAR2(1000) not null,
faqWri VARCHAR2(30) not null,
faqDate date DEFAULT sysdate
);

CREATE SEQUENCE seq_faq INCREMENT BY 1 START WITH 0 MINVALUE 0;


--공지사항 테이블
create table guci_notice(
noticeNo number PRIMARY key,
noticeTit VARCHAR2(50) not null,
noticeCon VARCHAR2(1000) not null,
noticeWri VARCHAR2(30) not null,
noticeDate date DEFAULT sysdate         
);

CREATE SEQUENCE seq_notice INCREMENT BY 1 START WITH 0 MINVALUE 0;

--이미지 처리 테이블
--상품이미지
create table goodsImg(
uuid_goods varchar2(100) primary key,
fileName_goods varchar2(100) not null,
path_goods varchar2(200) not null,
fileType_goods char(1) default 1,
gdsNo number not null,
gdsName varchar2(50) not null,
constraint fk_goodsImg foreign key (gdsNO, gdsName) references guci_goods(gdsNO, gdsName)
);

--문의이미지
create table questionImg(
uuid_ques varchar2(100) primary key,
fileName_ques varchar2(100) not null,
path_ques varchar2(200) not null,
fileType_ques char(1) default 1,
quesNo number not null,
constraint fk_quesImg foreign key (quesNo) references guci_question(quesNO)
);
-- 카테고리 고정 데이터
INSERT INTO goods_category (cateName, cateCode) VALUES ('남성', '100');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('상의', '101', '100');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('하의', '102', '100');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('아우터', '103', '100');

INSERT INTO goods_category (cateName, cateCode) VALUES ('여성', '200');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('상의', '201', '200');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('하의', '202', '200');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('아우터', '203', '200');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('원피스', '204', '200');

INSERT INTO goods_category (cateName, cateCode) VALUES ('공용', '300');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('상의', '301', '300');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('하의', '302', '300');
INSERT INTO goods_category (cateName, cateCode, cateCodeRef) VALUES ('아우터', '303', '300');


