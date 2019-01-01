package com.aim.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {

	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value = { "/upload-file" }, method = RequestMethod.GET )
	public String uploadFilePage() {
		return "upload.html";
	}

	@RequestMapping(value = { "/upload-file" }, method = RequestMethod.POST,produces = "application/json;charset=utf-8")
	@ResponseBody
	public String uploadFile(@RequestParam("myFileName") MultipartFile file, HttpServletRequest request) {
		System.out.println("success");

		return saveFile(file, request);
	}

	private String saveFile(MultipartFile file, HttpServletRequest request) {
		if (!file.isEmpty()) {
			try {
				String path = "D:/aamsystem/images" + file.getOriginalFilename();
				String path1 = this.servletContext.getRealPath("") + "images/" + file.getOriginalFilename();
				System.out.println(path);
				System.out.println(file.getOriginalFilename());
				System.out.println(path);
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(path));
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(path1));
				System.out.println(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
						+ request.getContextPath() + "/images/" + file.getOriginalFilename());
				return request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
						+ request.getContextPath() + "/images/" + file.getOriginalFilename();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "error";
	}
}