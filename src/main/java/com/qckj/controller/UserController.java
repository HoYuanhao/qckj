package com.qckj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qckj.model.Admin;
import com.qckj.model.AdminBase;
import com.qckj.model.UserAuthentication;
import com.qckj.model.UserBase;
import com.qckj.model.UserBaseVo;
import com.qckj.service.AdminService;
import com.qckj.service.UserService;
import com.qckj.utility.DateToLongUtil;
import com.qckj.utility.Md5Util;
import com.qckj.utility.UUIDUtil;

/**
 * 
 * @author yuanhaohe
 *
 */
@Controller
public class UserController {
	@Autowired
	AdminService adminService;
	@Autowired
	UserService userService;
	
	
	@RequestMapping("/index")
	@SuppressWarnings("all")
	public String index(HttpSession session) {
		AdminBase adminbase = null;
		if ((adminbase = (AdminBase) session.getAttribute("admin")) != null) {
			return "redirect:/manage.jsp";
		} else {
			return "redirect:/welcome.jsp";
		}
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String pwd,
			@RequestParam(value = "permission", required = false) String permission, HttpSession session,
			HttpServletRequest request) throws Exception {
		if (username == null || pwd == null || permission == null) {
			return "redirect:/manage.jsp";
		} else {
			String password = Md5Util.getMd5(pwd);
			if (permission.equals("1")) {
				AdminBase adminbase = null;
				if ((adminbase = (AdminBase) session.getAttribute("admin")) != null) {
					session.removeAttribute("admin");
					session.removeAttribute("username");

				}

				Admin admin = adminService.getPwdByUsername(username);
				if (admin!=null&&(admin.getPassword()).equals(password)) {
					adminbase = adminService.getAdminBaseById(admin.getId());
					session.setAttribute("admin", adminbase);
					session.setAttribute("username", username);
					session.setAttribute("password", password);
					return "forward:/manage.jsp";
				} else {
					System.out.println(session.getAttribute("user"));
					request.setAttribute("username", username);
					request.setAttribute("password", pwd);
					request.setAttribute("error", "用户名或密码错误！");
					return "forward:/welcome.jsp";

				}
			} else {
				String user_id = userService.userLogin(username, password);
				if (user_id != null) {
					session.setAttribute("user_id", user_id);
					session.setAttribute("username", username);
					return "forward:/manage.jsp";
				} else {
					request.setAttribute("username", username);
					request.setAttribute("password", pwd);
					request.setAttribute("error", "用户名或密码错误！");
					return "forward:/welcome.jsp";
				}
			}
		}

	}

	@RequestMapping("/adduser")
	public String addUser(@RequestParam(required = false) String username,
			@RequestParam(required = false) String password, @RequestParam(required = false) String number,
			@RequestParam(required = false) String name, @RequestParam(required = false,defaultValue="0") int age,
			@RequestParam(required = false) String major,
			@RequestParam(value = "class", required = false) String classes,
			@RequestParam(required = false) String phone, @RequestParam(required = false) String department,
			@RequestParam(required = false) String qqnumber, @RequestParam(required = false) int gender,
			@RequestParam(required = false, defaultValue = "0") int isadmin,
			@RequestParam(required = false) String origin,
			@RequestParam(value = "content", required = false) String other,
			@RequestParam(required = false) String birthday, HttpSession session, HttpServletRequest request)
			throws Exception {
		if (session.getAttribute("admin") instanceof AdminBase) {
			System.out.println("name：" + isadmin);
			if (isadmin == 1) {
				if (adminService.checkAdminByUserName(username) == 0) {
					Admin admin = new Admin();
					String id = UUIDUtil.getUUID();
					admin.setId(id);
					admin.setPassword(Md5Util.getMd5(password));
					admin.setUsername(username);
					adminService.addAdmin(admin);
					AdminBase adminbase = new AdminBase();
					adminbase.setId(id);
					adminbase.setName(name);
					adminbase.setNumber(Integer.valueOf(number));
					adminbase.setGender(gender);
					adminbase.setPhone(phone);
					adminbase.setOther(other);
					adminbase.setPermission(0);
					adminService.updateAdminBase(adminbase);
					request.setAttribute("error", "保存成功！");
				} else {
					request.setAttribute("error", "用户名已注册！");
				}

			}
			if (isadmin == 0) {
				if (userService.checkUserByUserName(username) == 0) {
					UserAuthentication authentication = new UserAuthentication();
					UserBase userbase = new UserBase();
					String id = UUIDUtil.getUUID();
					authentication.setId(id);
					authentication.setPassword(Md5Util.getMd5(password));
					authentication.setUsername(username);
					userbase.setId(id);
					userbase.setNumber(Integer.parseInt(number));
					userbase.setName(name);
					userbase.setAge(age);
					userbase.setMajor(major);
					userbase.setClasses(classes);
					userbase.setPhone(phone);
					userbase.setDepartment(department);
					userbase.setQqnumber(qqnumber);
					userbase.setGender(gender);
					userbase.setOrigin(origin);
					userbase.setBirthday(DateToLongUtil.getLongFromDate(birthday, "yyyy-MM-dd"));
					userbase.setOther(other);
					System.out.println(userbase);
					userService.addUserAuthentication(authentication);
					userService.addUserBase(userbase);
					request.setAttribute("error", "保存成功！");
				} else {
					request.setAttribute("error", "用户名已注册！");
				}
			}
		} else {
			request.setAttribute("error", "你不是管理员！");
		}
		return "forward:/adduserandgetlist.do";

	}

	@RequestMapping("listuser")
	public String getListUser(HttpServletRequest request, HttpSession session) throws Exception {
		List<UserBaseVo> list = userService.getAllUser();
		request.setAttribute("list", list);
		return "forward:/listuser.jsp";
	}

	@RequestMapping("selectuser")
	public String selectUser(HttpServletRequest request, String id) throws Exception {
		UserBaseVo user = userService.selectUserById(id);
		request.setAttribute("userbasevo", user);
		return "forward:/updateuser.jsp";

	}

	@RequestMapping("updateuser")
	public String updateUser(String id, @RequestParam(required = false) String username,
			@RequestParam(required = false) String number, @RequestParam(required = false) String name,
			@RequestParam(required = false,defaultValue="0") int age, @RequestParam(required = false) String major,
			@RequestParam(value = "Classes", required = false) String Classes,
			@RequestParam(required = false) String phone, @RequestParam(required = false) String department,
			@RequestParam(required = false) String qqnumber, @RequestParam(required = false) int gender,
			@RequestParam(required = false) String origin,
			@RequestParam(value = "other", required = false) String other,
			@RequestParam(required = false) String birthday, HttpSession session, HttpServletRequest request)
			throws Exception {
		if (session.getAttribute("admin") != null) {
			UserBaseVo userbase = new UserBaseVo();
			userbase.setId(id);
			userbase.setUsername(username);
			userbase.setId(id);
			userbase.setNumber(Integer.parseInt(number));
			userbase.setName(name);
			userbase.setAge(age);
			userbase.setMajor(major);
			userbase.setClasses(Classes);
			userbase.setPhone(phone);
			userbase.setDepartment(department);
			userbase.setQqnumber(qqnumber);
			userbase.setGender(gender);
			userbase.setOrigin(origin);
			userbase.setBirthday(DateToLongUtil.getLongFromDate(birthday, "yyyy-MM-dd"));
			userbase.setOther(other);
			System.out.println(userbase.getClasses());
			System.out.println(userbase.getMajor());
			userService.updateUserBase(userbase);
			request.setAttribute("userbasevo", userbase);
			request.setAttribute("error", "更新成功！");
			return "forward:/listuser.do";
		} else {
			request.setAttribute("error", "你不是管理员！");
			return "forward:/listuser.do";
		}

	}

	@RequestMapping("/deleteuser")
	public String deleteUser(String id, HttpSession session, HttpServletRequest request) throws Exception {
		if (session.getAttribute("admin") != null) {
			userService.deleteUserById(id);
			return "redirect:/listuser.do";
		} else {
			request.setAttribute("error", "你不是管理员！");
			return "forward:/listuser.do";
		}

	}

	@RequestMapping("/logout")
	public String logOut(HttpSession session) {
		session.removeAttribute("admin");
		session.removeAttribute("error");
		session.removeAttribute("user");
		session.removeAttribute("userbase");
		session.removeAttribute("username");
		session.removeAttribute("user_id");
		session.removeAttribute("password");
		return "redirect:/welcome.jsp";

	}

	@RequestMapping("adduserandgetlist")
	public String addUserAndGetList(HttpServletRequest request) throws Exception {
		List<String> list = userService.getDetailedList();
		request.setAttribute("detailedlist", list);
		return "forward:/adduser.jsp";

	}
}
