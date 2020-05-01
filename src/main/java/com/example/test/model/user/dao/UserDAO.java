package com.example.test.model.user.dao;

import com.example.test.model.user.dto.UserDTO;

public interface UserDAO {

	public String login(UserDTO dto);
	public UserDTO user_view(String userid);
	public void insert(UserDTO dto);
	public int id_chk(String userid);
	public void grade_up(int gno);
	public void email_chk(String userid);
	public String look_id(UserDTO dto);
	public String look_pw(UserDTO dto);
	public void update_pw(String userid, String passwd);
	public void update_user(UserDTO dto);
	public void update_passwd(UserDTO dto);
	public void update_coupon(String userid);
	public void update_account(String userid);
	public void delete_coupon(String userid);
	public void profile_upload(UserDTO dto);
	public int get_grade(String userid);
	public void update_fund(String userid);
}
