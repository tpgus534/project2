-- 강의
ALTER TABLE "lesson"
	DROP CONSTRAINT "FK_cate_TO_les"; -- 카테고리 -> 강의

-- 강의
ALTER TABLE "lesson"
	DROP CONSTRAINT "FK_tea_TO_les"; -- 강사 -> 강의

-- 강사자격증
ALTER TABLE "license"
	DROP CONSTRAINT "FK_tea_TO_lic"; -- 강사 -> 강사자격증

-- 강의장주소
ALTER TABLE "lesson_address"
	DROP CONSTRAINT "FK_tea_TO_les_address"; -- 강사 -> 강의장주소

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	DROP CONSTRAINT "FK_les_TO_les_inter"; -- 강의 -> 강의인터섹터

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	DROP CONSTRAINT "FK_stu_TO_les_inter"; -- 수강생 -> 강의인터섹터

-- 찜목록
ALTER TABLE "likelist"
	DROP CONSTRAINT "FK_stu_TO_like"; -- 수강생 -> 찜목록

-- 수강생결제이력
ALTER TABLE "student_paylist"
	DROP CONSTRAINT "FK_stu_TO_stu_pay"; -- 수강생 -> 수강생결제이력

-- 환불요청
ALTER TABLE "refund_request"
	DROP CONSTRAINT "FK_stu_pay_TO_refd_req"; -- 수강생결제이력 -> 환불요청

-- 댓글
ALTER TABLE "reply"
	DROP CONSTRAINT "FK_stu_TO_reply"; -- 수강생 -> 댓글

-- 댓글
ALTER TABLE "reply"
	DROP CONSTRAINT "FK_les_TO_reply"; -- 강의 -> 댓글

-- 강의상세
ALTER TABLE "lesson_detail"
	DROP CONSTRAINT "FK_les_TO_les_detail"; -- 강의 -> 강의상세

-- 대댓글
ALTER TABLE "re_reply"
	DROP CONSTRAINT "FK_reply_TO_re_reply"; -- 댓글 -> 대댓글

-- 광고
ALTER TABLE "advertisement"
	DROP CONSTRAINT "FK_ado_TO_adv"; -- 광고주 -> 광고

-- 강의신고
ALTER TABLE "singo"
	DROP CONSTRAINT "FK_les_TO_singo"; -- 강의 -> 강의신고

-- 컴플레인
ALTER TABLE "complain"
	DROP CONSTRAINT "FK_les_TO_cmpl"; -- 강의 -> 컴플레인

-- 강의
ALTER TABLE "lesson"
	DROP CONSTRAINT "PK_lesson"; -- 강의 기본키

-- 카테고리
ALTER TABLE "category"
	DROP CONSTRAINT "PK_category"; -- 카테고리 기본키

-- 수강생
ALTER TABLE "student"
	DROP CONSTRAINT "PK_student"; -- 수강생 기본키

-- 강사
ALTER TABLE "teacher"
	DROP CONSTRAINT "PK_teacher"; -- 강사 기본키

-- 강사자격증
ALTER TABLE "license"
	DROP CONSTRAINT "PK_license"; -- 강사자격증 기본키

-- 강의장주소
ALTER TABLE "lesson_address"
	DROP CONSTRAINT "PK_lesson_address"; -- 강의장주소 기본키

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	DROP CONSTRAINT "PK_lesson_intersector"; -- 강의인터섹터 기본키

-- 찜목록
ALTER TABLE "likelist"
	DROP CONSTRAINT "PK_likelist"; -- 찜목록 기본키

-- 수강생결제이력
ALTER TABLE "student_paylist"
	DROP CONSTRAINT "PK_student_paylist"; -- 수강생결제이력 기본키

-- 환불요청
ALTER TABLE "refund_request"
	DROP CONSTRAINT "PK_refund_request"; -- 환불요청 기본키

-- 댓글
ALTER TABLE "reply"
	DROP CONSTRAINT "PK_reply"; -- 댓글 기본키

-- 강의상세
ALTER TABLE "lesson_detail"
	DROP CONSTRAINT "PK_lesson_detail"; -- 강의상세 기본키

-- 대댓글
ALTER TABLE "re_reply"
	DROP CONSTRAINT "PK_re_reply"; -- 대댓글 기본키

-- 광고
ALTER TABLE "advertisement"
	DROP CONSTRAINT "PK_advertisement"; -- 광고 기본키

-- 광고주
ALTER TABLE "adowner"
	DROP CONSTRAINT "PK_adowner"; -- 광고주 기본키

-- 관리자
ALTER TABLE "admin"
	DROP CONSTRAINT "PK_admin"; -- 관리자 기본키

-- 강의신고
ALTER TABLE "singo"
	DROP CONSTRAINT "PK_singo"; -- 강의신고 기본키

-- 컴플레인
ALTER TABLE "complain"
	DROP CONSTRAINT "PK_complain"; -- 컴플레인 기본키

-- 매출
ALTER TABLE "sales"
	DROP CONSTRAINT "PK_sales"; -- 매출 기본키

-- 강의
DROP TABLE "lesson";

-- 카테고리
DROP TABLE "category";

-- 수강생
DROP TABLE "student";

-- 강사
DROP TABLE "teacher";

-- 강사자격증
DROP TABLE "license";

-- 강의장주소
DROP TABLE "lesson_address";

-- 강의인터섹터
DROP TABLE "lesson_intersector";

-- 찜목록
DROP TABLE "likelist";

-- 수강생결제이력
DROP TABLE "student_paylist";

-- 환불요청
DROP TABLE "refund_request";

-- 댓글
DROP TABLE "reply";

-- 강의상세
DROP TABLE "lesson_detail";

-- 대댓글
DROP TABLE "re_reply";

-- 광고
DROP TABLE "advertisement";

-- 광고주
DROP TABLE "adowner";

-- 관리자
DROP TABLE "admin";

-- 강의신고
DROP TABLE "singo";

-- 컴플레인
DROP TABLE "complain";

-- 매출
DROP TABLE "sales";

-- 강의
CREATE TABLE "lesson" (
	"les_no"           varchar2(8)        NOT NULL, -- 강의번호
	"les_title"        varchar2(100 char) NULL,     -- 강의제목
	"les_address"      varchar2(200 char) NULL,     -- 강의장주소
	"les_status"       varchar2(1)        NULL,     -- 상태정보
	"les_max"          number(3)          NULL,     -- 최대인원
	"les_kind"         varchar2(3)        NULL,     -- 레슨구분
	"les_registerdate" date               DEFAULT sysdate, -- 등록일
	"les_startdate"    date               NULL,     -- 시작일
	"les_enddate"      date               NULL,     -- 종료일
	"les_price"        number(7)          NULL,     -- 가격
	"tea_id"           varchar2(32)       NOT NULL, -- 강사아이디
	"cat_no"           number(2)          NULL      -- 카테고리번호
);

-- 강의
ALTER TABLE "lesson"
	ADD
		CONSTRAINT "PK_lesson" -- 강의 기본키
		PRIMARY KEY (
			"les_no" -- 강의번호
		);

-- 카테고리
CREATE TABLE "category" (
	"cat_no"   number(2)         NOT NULL, -- 카테고리번호
	"cat_name" varchar2(10 char) NULL      -- 카테고리이름
);

-- 카테고리
ALTER TABLE "category"
	ADD
		CONSTRAINT "PK_category" -- 카테고리 기본키
		PRIMARY KEY (
			"cat_no" -- 카테고리번호
		);

-- 수강생
CREATE TABLE "student" (
	"stu_id"            varchar2(32)       NOT NULL, -- 수강생아이디
	"stu_name"          varchar2(8 char)   NULL,     -- 이름
	"stu_pwd"           varchar2(16)       NULL,     -- 비밀번호
	"stu_birth"         varchar2(6)        NULL,     -- 생년월일
	"stu_gender"        varchar2(1)        NULL,     -- 성별
	"stu_joindate"      date               DEFAULT sysdate, -- 가입일
	"stu_email"         varchar2(32)       NULL,     -- 이메일
	"stu_emaildomain"   varchar2(32)       NULL,     -- 이메일도메인
	"stu_tel1"          varchar2(3)        NULL,     -- 번호1
	"stu_tel2"          varchar2(4)        NULL,     -- 번호2
	"stu_tel3"          varchar2(4)        NULL,     -- 번호3
	"stu_zipcode"       varchar2(5)        NULL,     -- 우편번호
	"stu_address"       varchar2(100 char) NULL,     -- 기본주소
	"stu_addressdetail" varchar2(100 char) NULL,     -- 상세주소
	"stu_point"         number             NULL,     -- 포인트
	"stu_x"             number             NULL,     -- 위도
	"stu_y"             number             NULL,     -- 경도
	"stu_actck"         varchar2(1)        NULL      -- 활동여부
);

-- 수강생
ALTER TABLE "student"
	ADD
		CONSTRAINT "PK_student" -- 수강생 기본키
		PRIMARY KEY (
			"stu_id" -- 수강생아이디
		);

-- 강사
CREATE TABLE "teacher" (
	"tea_id"          varchar2(32)        NOT NULL, -- 강사아이디
	"tea_name"        varchar2(8 char)    NULL,     -- 이름
	"tea_pwd"         varchar2(16)        NULL,     -- 비밀번호
	"tea_birth"       varchar2(6)         NULL,     -- 생년월일
	"tea_gender"      varchar2(1)         NULL,     -- 성별
	"tea_joindate"    date                DEFAULT sysdate, -- 가입일
	"tea_email"       varchar2(32)        NULL,     -- 이메일
	"tea_emaildomain" varchar2(32)        NULL,     -- 이메일도메인
	"tea_tel1"        varchar2(3)         NULL,     -- 번호1
	"tea_tel2"        varchar2(4)         NULL,     -- 번호2
	"tea_tel3"        varchar2(4)         NULL,     -- 번호3
	"tea_imgpath"     varchar2(100)       NULL,     -- 증명사진경로
	"tea_history"     varchar2(1300 char) NULL,     -- 강사이력
	"tea_pofol"       varchar2(100)       NULL,     -- 포트폴리오경로
	"tea_actck"       varchar2(1)         NULL      -- 활동여부
);

-- 강사
ALTER TABLE "teacher"
	ADD
		CONSTRAINT "PK_teacher" -- 강사 기본키
		PRIMARY KEY (
			"tea_id" -- 강사아이디
		);

-- 강사자격증
CREATE TABLE "license" (
	"tea_id"      varchar2(32)      NOT NULL, -- 강사아이디
	"lic_no"      varchar2(32)      NOT NULL, -- 자격증번호
	"lic_name"    varchar2(32 char) NULL,     -- 자격증명
	"lic_imgpath" varchar2(100)     NULL,     -- 자격증이미지경로
	"lic_check"   varchar2(1)       NULL      -- 증명여부
);

-- 강사자격증
ALTER TABLE "license"
	ADD
		CONSTRAINT "PK_license" -- 강사자격증 기본키
		PRIMARY KEY (
			"tea_id", -- 강사아이디
			"lic_no"  -- 자격증번호
		);

-- 강의장주소
CREATE TABLE "lesson_address" (
	"les_no"        varchar2(8)        NOT NULL, -- 강의번호
	"tea_id"        varchar2(32)       NOT NULL, -- 강사아이디
	"address_name"  varchar2(32 char)  NOT NULL, -- 주소이름
	"zipcode"       varchar2(5)        NULL,     -- 우편번호
	"address"       varchar2(100 char) NULL,     -- 기본주소
	"addressdetail" varchar2(100 char) NULL,     -- 상세주소
	"les_x"         number             NULL,     -- 위도
	"les_y"         number             NULL      -- 경도
);

-- 강의장주소
ALTER TABLE "lesson_address"
	ADD
		CONSTRAINT "PK_lesson_address" -- 강의장주소 기본키
		PRIMARY KEY (
			"tea_id",       -- 강사아이디
			"address_name"  -- 주소이름
		);

-- 강의인터섹터
CREATE TABLE "lesson_intersector" (
	"les_no"   varchar2(8)  NOT NULL, -- 강의번호
	"stu_id"   varchar2(32) NOT NULL, -- 수강생아이디
	"les_join" date         DEFAULT sysdate -- 강의신청일
);

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	ADD
		CONSTRAINT "PK_lesson_intersector" -- 강의인터섹터 기본키
		PRIMARY KEY (
			"les_no", -- 강의번호
			"stu_id"  -- 수강생아이디
		);

-- 찜목록
CREATE TABLE "likelist" (
	"stu_id" varchar2(32) NOT NULL, -- 수강생아이디
	"les_no" varchar2(8)  NOT NULL  -- 강의번호
);

-- 찜목록
ALTER TABLE "likelist"
	ADD
		CONSTRAINT "PK_likelist" -- 찜목록 기본키
		PRIMARY KEY (
			"stu_id", -- 수강생아이디
			"les_no"  -- 강의번호
		);

-- 수강생결제이력
CREATE TABLE "student_paylist" (
	"pay_no"    varchar2(8)  NOT NULL, -- 결제번호
	"pay_price" number       NULL,     -- 금액
	"pay_date"  date         DEFAULT sysdate, -- 결제일자
	"use_point" number       NULL,     -- 사용포인트
	"les_no"    varchar2(8)  NOT NULL, -- 강의번호
	"stu_id"    varchar2(32) NULL      -- 수강생아이디
);

-- 수강생결제이력
ALTER TABLE "student_paylist"
	ADD
		CONSTRAINT "PK_student_paylist" -- 수강생결제이력 기본키
		PRIMARY KEY (
			"pay_no" -- 결제번호
		);

-- 환불요청
CREATE TABLE "refund_request" (
	"pay_no"       varchar2(8)         NOT NULL, -- 결제번호
	"request_date" date                DEFAULT sysdate, -- 요청일시
	"refd_detail"  varchar2(1000 char) NULL,     -- 상세내용
	"refd_price"   number              NULL,     -- 환불금액
	"refd_check"   varchar2(1)         NULL      -- 처리여부
);

-- 환불요청
ALTER TABLE "refund_request"
	ADD
		CONSTRAINT "PK_refund_request" -- 환불요청 기본키
		PRIMARY KEY (
			"pay_no" -- 결제번호
		);

-- 댓글
CREATE TABLE "reply" (
	"rep_no"       varchar2(8)        NOT NULL, -- 댓글번호
	"stu_id"       varchar2(32)       NOT NULL, -- 수강생아이디
	"les_no"       varchar2(8)        NOT NULL, -- 강의번호
	"rep_date"     date               DEFAULT sysdate, -- 작성일
	"rep_editdate" date               NULL,     -- 최종수정일
	"rep_content"  varchar2(500 char) NULL      -- 내용
);

-- 댓글
ALTER TABLE "reply"
	ADD
		CONSTRAINT "PK_reply" -- 댓글 기본키
		PRIMARY KEY (
			"rep_no", -- 댓글번호
			"stu_id", -- 수강생아이디
			"les_no"  -- 강의번호
		);

-- 강의상세
CREATE TABLE "lesson_detail" (
	"les_no"          varchar2(8)         NOT NULL, -- 강의번호
	"les_description" varchar2(1300 char) NULL,     -- 강의설명
	"curri_info"      varchar2(1300 char) NULL,     -- 커리큘럼정보
	"mainimg_path"    varchar2(100)       NULL,     -- 메인사진경로
	"price_info"      number              NULL,     -- 가격정보
	"mon"             varchar2(8)         NULL,     -- 월
	"tue"             varchar2(8)         NULL,     -- 화
	"wed"             varchar2(8)         NULL,     -- 수
	"thu"             varchar2(8)         NULL,     -- 목
	"fri"             varchar2(8)         NULL,     -- 금
	"sat"             varchar2(8)         NULL,     -- 토
	"sun"             varchar2(8)         NULL      -- 일
);

-- 강의상세
ALTER TABLE "lesson_detail"
	ADD
		CONSTRAINT "PK_lesson_detail" -- 강의상세 기본키
		PRIMARY KEY (
			"les_no" -- 강의번호
		);

-- 대댓글
CREATE TABLE "re_reply" (
	"rep_no"     varchar2(8)        NOT NULL, -- 댓글번호
	"stu_id"     varchar2(32)       NOT NULL, -- 수강생아이디
	"les_no"     varchar2(8)        NOT NULL, -- 강의번호
	"rerep_date" date               DEFAULT sysdate, -- 작성일
	"re_content" varchar2(500 char) NULL      -- 내용
);

-- 대댓글
ALTER TABLE "re_reply"
	ADD
		CONSTRAINT "PK_re_reply" -- 대댓글 기본키
		PRIMARY KEY (
			"rep_no", -- 댓글번호
			"stu_id", -- 수강생아이디
			"les_no"  -- 강의번호
		);

-- 광고
CREATE TABLE "advertisement" (
	"ad_no"           varchar2(8)        NOT NULL, -- 광고번호
	"ad_title"        varchar2(32)       NULL,     -- 광고제목
	"ad_description"  varchar2(100 char) NULL,     -- 광고설명
	"ad_url"          varchar2(256)      NULL,     -- 연결url
	"ad_imgpath"      varchar2(100)      NULL,     -- 사진파일
	"ad_registerdate" date               DEFAULT sysdate, -- 등록일
	"ado_id"          varchar2(8)        NULL      -- 광고주아이디
);

-- 광고
ALTER TABLE "advertisement"
	ADD
		CONSTRAINT "PK_advertisement" -- 광고 기본키
		PRIMARY KEY (
			"ad_no" -- 광고번호
		);

-- 광고주
CREATE TABLE "adowner" (
	"ado_id"           varchar2(8)       NOT NULL, -- 광고주아이디
	"ado_company"      varchar2(32 char) NULL,     -- 업체명
	"ado_name"         varchar2(8 char)  NULL,     -- 대표이름
	"ado_tel1"         varchar2(3)       NULL,     -- 번호1
	"ado_tel2"         varchar2(4)       NULL,     -- 번호2
	"ado_tel3"         varchar2(4)       NULL,     -- 번호3
	"ado_registerdate" date              DEFAULT sysdate -- 등록일
);

-- 광고주
ALTER TABLE "adowner"
	ADD
		CONSTRAINT "PK_adowner" -- 광고주 기본키
		PRIMARY KEY (
			"ado_id" -- 광고주아이디
		);

-- 관리자
CREATE TABLE "admin" (
	"admin_id"  varchar2(32) NOT NULL, -- 관리자아이디
	"admin_pwd" varchar2(16) NULL      -- 비밀번호
);

-- 관리자
ALTER TABLE "admin"
	ADD
		CONSTRAINT "PK_admin" -- 관리자 기본키
		PRIMARY KEY (
			"admin_id" -- 관리자아이디
		);

-- 강의신고
CREATE TABLE "singo" (
	"sin_no"      varchar2(8)         NOT NULL, -- 신고번호
	"sin_date"    date                DEFAULT sysdate, -- 작성일
	"sin_content" varchar2(1000 char) NULL,     -- 신고내용
	"sin_check"   varchar2(1)         NULL,     -- 처리여부
	"les_no"      varchar2(8)         NULL      -- 강의번호
);

-- 강의신고
ALTER TABLE "singo"
	ADD
		CONSTRAINT "PK_singo" -- 강의신고 기본키
		PRIMARY KEY (
			"sin_no" -- 신고번호
		);

-- 컴플레인
CREATE TABLE "complain" (
	"cmpl_no"      varchar2(8)         NOT NULL, -- 컴플레인번호
	"cmpl_content" varchar2(1000 char) NULL,     -- 내용
	"cmpl_date"    date                DEFAULT sysdate, -- 작성일자
	"cmpl_check"   varchar2(1)         NULL,     -- 처리여부
	"les_no"       varchar2(8)         NULL      -- 강의번호
);

-- 컴플레인
ALTER TABLE "complain"
	ADD
		CONSTRAINT "PK_complain" -- 컴플레인 기본키
		PRIMARY KEY (
			"cmpl_no" -- 컴플레인번호
		);

-- 매출
CREATE TABLE "sales" (
	"sale_no"    varchar2(16) NOT NULL, -- 매출일련번호
	"sale_price" number       NULL,     -- 매출금액
	"sale_date"  date         DEFAULT sysdate, -- 매출일
	"pay_no"     varchar2(8)  NULL      -- 결제번호
);

-- 매출
ALTER TABLE "sales"
	ADD
		CONSTRAINT "PK_sales" -- 매출 기본키
		PRIMARY KEY (
			"sale_no" -- 매출일련번호
		);

-- 강의
ALTER TABLE "lesson"
	ADD
		CONSTRAINT "FK_cate_TO_les" -- 카테고리 -> 강의
		FOREIGN KEY (
			"cat_no" -- 카테고리번호
		)
		REFERENCES "category" ( -- 카테고리
			"cat_no" -- 카테고리번호
		);

-- 강의
ALTER TABLE "lesson"
	ADD
		CONSTRAINT "FK_tea_TO_les" -- 강사 -> 강의
		FOREIGN KEY (
			"tea_id" -- 강사아이디
		)
		REFERENCES "teacher" ( -- 강사
			"tea_id" -- 강사아이디
		);

-- 강사자격증
ALTER TABLE "license"
	ADD
		CONSTRAINT "FK_tea_TO_lic" -- 강사 -> 강사자격증
		FOREIGN KEY (
			"tea_id" -- 강사아이디
		)
		REFERENCES "teacher" ( -- 강사
			"tea_id" -- 강사아이디
		);

-- 강의장주소
ALTER TABLE "lesson_address"
	ADD
		CONSTRAINT "FK_tea_TO_les_address" -- 강사 -> 강의장주소
		FOREIGN KEY (
			"tea_id" -- 강사아이디
		)
		REFERENCES "teacher" ( -- 강사
			"tea_id" -- 강사아이디
		);

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	ADD
		CONSTRAINT "FK_les_TO_les_inter" -- 강의 -> 강의인터섹터
		FOREIGN KEY (
			"les_no" -- 강의번호
		)
		REFERENCES "lesson" ( -- 강의
			"les_no" -- 강의번호
		);

-- 강의인터섹터
ALTER TABLE "lesson_intersector"
	ADD
		CONSTRAINT "FK_stu_TO_les_inter" -- 수강생 -> 강의인터섹터
		FOREIGN KEY (
			"stu_id" -- 수강생아이디
		)
		REFERENCES "student" ( -- 수강생
			"stu_id" -- 수강생아이디
		);

-- 찜목록
ALTER TABLE "likelist"
	ADD
		CONSTRAINT "FK_stu_TO_like" -- 수강생 -> 찜목록
		FOREIGN KEY (
			"stu_id" -- 수강생아이디
		)
		REFERENCES "student" ( -- 수강생
			"stu_id" -- 수강생아이디
		);

-- 수강생결제이력
ALTER TABLE "student_paylist"
	ADD
		CONSTRAINT "FK_stu_TO_stu_pay" -- 수강생 -> 수강생결제이력
		FOREIGN KEY (
			"stu_id" -- 수강생아이디
		)
		REFERENCES "student" ( -- 수강생
			"stu_id" -- 수강생아이디
		);

-- 환불요청
ALTER TABLE "refund_request"
	ADD
		CONSTRAINT "FK_stu_pay_TO_refd_req" -- 수강생결제이력 -> 환불요청
		FOREIGN KEY (
			"pay_no" -- 결제번호
		)
		REFERENCES "student_paylist" ( -- 수강생결제이력
			"pay_no" -- 결제번호
		);

-- 댓글
ALTER TABLE "reply"
	ADD
		CONSTRAINT "FK_stu_TO_reply" -- 수강생 -> 댓글
		FOREIGN KEY (
			"stu_id" -- 수강생아이디
		)
		REFERENCES "student" ( -- 수강생
			"stu_id" -- 수강생아이디
		);

-- 댓글
ALTER TABLE "reply"
	ADD
		CONSTRAINT "FK_les_TO_reply" -- 강의 -> 댓글
		FOREIGN KEY (
			"les_no" -- 강의번호
		)
		REFERENCES "lesson" ( -- 강의
			"les_no" -- 강의번호
		);

-- 강의상세
ALTER TABLE "lesson_detail"
	ADD
		CONSTRAINT "FK_les_TO_les_detail" -- 강의 -> 강의상세
		FOREIGN KEY (
			"les_no" -- 강의번호
		)
		REFERENCES "lesson" ( -- 강의
			"les_no" -- 강의번호
		);

-- 대댓글
ALTER TABLE "re_reply"
	ADD
		CONSTRAINT "FK_reply_TO_re_reply" -- 댓글 -> 대댓글
		FOREIGN KEY (
			"rep_no", -- 댓글번호
			"stu_id", -- 수강생아이디
			"les_no"  -- 강의번호
		)
		REFERENCES "reply" ( -- 댓글
			"rep_no", -- 댓글번호
			"stu_id", -- 수강생아이디
			"les_no"  -- 강의번호
		);

-- 광고
ALTER TABLE "advertisement"
	ADD
		CONSTRAINT "FK_ado_TO_adv" -- 광고주 -> 광고
		FOREIGN KEY (
			"ado_id" -- 광고주아이디
		)
		REFERENCES "adowner" ( -- 광고주
			"ado_id" -- 광고주아이디
		);

-- 강의신고
ALTER TABLE "singo"
	ADD
		CONSTRAINT "FK_les_TO_singo" -- 강의 -> 강의신고
		FOREIGN KEY (
			"les_no" -- 강의번호
		)
		REFERENCES "lesson" ( -- 강의
			"les_no" -- 강의번호
		);

-- 컴플레인
ALTER TABLE "complain"
	ADD
		CONSTRAINT "FK_les_TO_cmpl" -- 강의 -> 컴플레인
		FOREIGN KEY (
			"les_no" -- 강의번호
		)
		REFERENCES "lesson" ( -- 강의
			"les_no" -- 강의번호
		);
		
DROP SEQUENCE lesson_seq;
		CREATE SEQUENCE lesson_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE singo_seq;
		CREATE SEQUENCE singo_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE complain_seq;
		CREATE SEQUENCE complain_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE category_seq;
		CREATE SEQUENCE category_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99;

DROP SEQUENCE ad_no_seq;
		CREATE SEQUENCE ad_no_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE pay_no_seq;
		CREATE SEQUENCE pay_no_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE rep_no_seq;
		CREATE SEQUENCE rep_no_seq
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;

DROP SEQUENCE sale_no;
		CREATE SEQUENCE sale_no
		START WITH 1
		INCREMENT BY 1
		MAXVALUE 99999999;