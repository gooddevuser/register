package com.mypage.myregister;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mypage.vo.MemoVO;
import com.mypage.vo.UserVO;

@Controller
public class HomeController {
	
	@GetMapping("/memobox")
	public String showMemobox(HttpSession session,String email) {
		
		MemoVO memo = new MemoVO();
		
		if (memo.getRecipient() == email){
			System.out.println(memo.getMemo());
			return "/memobox";
			
		}
		
		
		return "/home";
	}
	
	@GetMapping("/")
	public String showUserList(HttpSession session,Model model) {
		
		UserVO user2 = new UserVO();
		int uno = (int)(Math.random()*(9999999 - 1000000) + 1000000);
		user2.setUno(uno);		
		user2.setUsertype(1);
		user2.setEmail("admin");
		
		session.setAttribute("admin" , user2);
		
		/*UserVO user2 = mock(UserVO.class);
		
		user2.setUno(1);
		user2.setEmail("admin");
		
		session.setAttribute("admin", user2);*/
		
		return "/home";
	}

	@GetMapping("/doRegister")
	public String showDetail() {

		return "/register";
	}

	@PostMapping("/doRegister")
	public String doRegister(UserVO user,HttpSession session,Model model) {
				
		int uno = (int)(Math.random()*(9999999 - 1000000) + 1000000);
		user.setUsertype(2);
		user.setUno(uno);
		
		session.setAttribute("session", user);
				
		return "/home";
	}
	@GetMapping("/doMemo")
	public String showMemo(String email) {
		
		
		return "/memo";
	}
	
	@PostMapping("/doMemo")
	public String doMemo(MemoVO memo,String email,HttpSession session) {
		
		int mno = (int)(Math.random()*(9999999 - 1000000) + 1000000);
		memo.setMno(mno);
		memo.setSender(((UserVO) session.getAttribute("admin")).getEmail());
		memo.setRecipient(email);
		
		session.setAttribute("memo", memo);
		
		return "/home";
	}
	
	
	@GetMapping("/removeRegister")
	public String removeRegister(HttpSession session) {
		session.invalidate();
		return "/home";
	}
	
	
}