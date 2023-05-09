package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.scholarship.vo.ScholarshipInfoVO;
import kr.or.ddit.scholarship.vo.ScholarshipListVO;

public interface ScholarshipMapper {
	
	// 리스트 조회하기
	public List<ScholarshipListVO> scholarList(ScholarshipListVO sv);

	// 장학정보 조회
	public List<ScholarshipInfoVO> scholarInfoList(ScholarshipInfoVO si);

	// 장학금 insert
	public int insertScholar(ScholarshipListVO sv);

	// 장학금 신청현황 리스트
	public List<ScholarshipListVO> scholarListApp(ScholarshipListVO sv);
	
	// 장학금 신청현황 상세보기
	public ScholarshipListVO scholarDetail(int slNo);

	public List<ScholarshipInfoVO> infoList(ScholarshipInfoVO si);
	public List<ScholarshipInfoVO> infoList2(ScholarshipInfoVO si);

	public int insertScholarInfo(ScholarshipInfoVO si);

	public void deleteScholarInfo(String siCode);

	// 승인내역 조회
	public List<ScholarshipListVO> selectAcceptList(ScholarshipListVO sv);

	// 반려내역 조회
	public List<ScholarshipListVO> rejectList(ScholarshipListVO sv);

	// 대기내역 조회
	public List<ScholarshipListVO> waitList(ScholarshipListVO sv);

	public void updateStatus(ScholarshipListVO sv);

	public List<ScholarshipInfoVO> appList(ScholarshipListVO sv);

	public CurrentInfoVO getCurrentInfo();

}
