package com.aim.action;

import com.aim.pojo.User;
import com.aim.service.IUserService;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserAction
{

  @Resource(name="service")
  private IUserService service;

  @RequestMapping("/test")
  @ResponseBody
  public List<User> test(HttpServletResponse resp)
  {
    return this.service.listAll();
  }
}