package dev.mvc.member;

import java.util.List;
import java.util.Map;

public interface MemberDAOInter {
  
  /**
   * 회원 등록
   * @param memberVO
   * @return 등록된 회원 수 1 or 0
   */
  public int create(MemberVO memberVO);
  
  /**
   * 중복 이메일 검사
   * @param id
   * @return 중복 이메일 개수
   */
  public int checkEmail(String m_email);
  
  /**
   * 중복 닉네임 검사
   * @param id
   * @return 중복 닉네임 개수
   */
  public int checkNickname(String m_nickname);
  
  /**
   * 회원 전체 목록
   * @return
   */
  public List<MemberVO> list();
  
  /**
   * 조회
   * @param memberno
   * @return
   */
  public MemberVO read(int memberno);

  /**
   * 조회
   * @param m_email
   * @return
   */
  public MemberVO readByEmail(String m_email);
  
  /**
   * 변경
   * @param memberVO
   * @return
   */
  public int update(MemberVO memberVO);
  
  /**
   * 패스워드 변경 
   * @param map
   * @return
   */
  public int passwd_update(Map<String, Object> map);
 
  /**
   * 레코드 1건 삭제
   * @param mno 삭제할 회원 번호
   * @return 삭제된 레코드 갯수
   */
  public int delete(int memberno);
  
  /**
   * 로그인 
   * @param map
   * @return
   */
  public int login(Map map);
  
  
  

}
