package com.imu.bs.bean;

import org.springframework.web.multipart.MultipartFile;

public class Book {
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
