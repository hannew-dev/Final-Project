package kr.or.ddit.course.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CourseOpenVO {
	private String subCode;		// 교과코드
	private String subName;		// 교과명
	private String lecCode;		// 강의계획코드
	private String lecDivide;	// 분반
	private String proNameKo;	// 교수명
	private int lecGrade;		// 대상학년
	private int subCredit;		// 학점
	private String deptCode;	// 학과코드
	private String deptName;	// 학과명
	private int lecQuota;		// 수강정원
	private int subApplicant;	// 신청인원
	
	private String lrsStart;	// 강의시작시간코드
	private String lrsEnd;		// 강의종료시간코드
	private String weekCode;	// 요일코드
	
}
