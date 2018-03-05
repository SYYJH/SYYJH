package com.han.st;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	public MemberDAO(){}
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	public Connection getConn(){
		String url ="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "system";
		String pw = "0000";
		try {					
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url,user,pw);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage()+"db연결 객체에서 문제가 발생 했다");
		}
		return conn;
	}
	
	public int update(MemberDTO dto){
		getConn();
		String sql ="update tblMember set irum=?,pw=?,age=?,addr=?,tel=? where id=?";
		int succ =0;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, dto.getIrum());
			ps.setString(2, dto.getPw());
			ps.setInt(3, dto.getAge());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			ps.setString(6, dto.getId());
			
			succ = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return succ;
	}
	
	public MemberDTO getById(String id){
		getConn();
		String sql ="select * from tblMember where id=?";
	
		MemberDTO dto = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()){
				String irum = rs.getString("irum");
				id = rs.getString("id");
				String pw = rs.getString("pw");
				int age = rs.getInt("age");
				String addr = rs.getString("addr");
				String tel = rs.getString("tel");
				
		    	dto = new MemberDTO(irum,id,pw,addr,tel,age);	
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return dto;
	}
	
	
	public int delete(String id){
		getConn();
		int succ = 0;
		String sql="delete from tblMember where id=?";
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, id);
			
			succ = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return succ;
	}
	
	public int insert(MemberDTO dto){
		getConn();
		
		String sql = "insert into tblMember values(?,?,?,?,?,?)";
		int succ = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getIrum());
			ps.setString(2,dto.getId());
			ps.setString(3,dto.getPw());
			ps.setInt(4,dto.getAge());
			ps.setString(5,dto.getAddr());
			ps.setString(6,dto.getTel());
			succ = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return succ;
	}
	
	public ArrayList<MemberDTO> getAllList(){
		getConn();
		String sql = "select * from tblMember order by irum";
		ArrayList<MemberDTO> list = new ArrayList<>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
//				MemberDTO dto = new MemberDTO();
//				dto.getIrum("irum");
//				dto.getId("id");
//				dto.getPw("pw");
//				dto.getAge("age");
//				dto.getAddr("addr");
//				dto.getTel("tel");
				String irum = rs.getString("irum");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				int age = rs.getInt("age");
				String addr = rs.getString("addr");
				String tel = rs.getString("tel");
				MemberDTO dto = new MemberDTO(irum,id,pw,addr,tel,age);	
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage()+"전체 목록보기 에서 에러가 발생함");
		}
		return list;
	}
	
	
	
}
