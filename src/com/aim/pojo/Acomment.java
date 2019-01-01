package com.aim.pojo;

public class Acomment {

	private int acomment_id;
	private int acomment_manid;
	private String acomment_man;
	private String acomment_content;
	private String acomment_writetime;
	private int acomment_replaymanid;
	private String acomment_replayman;
	private String acomment_replaycontent;
	private String acomment_replaytime;
	private int acomment_state;

	public Acomment() {
	}

	public Acomment(int acomment_id, int acomment_manid, String acomment_man, String acomment_content,
			String acomment_writetime, int acomment_replaymanid, String acomment_replayman,
			String acomment_replaycontent, String acomment_replaytime, int acomment_state) {
		this.acomment_id = acomment_id;
		this.acomment_manid = acomment_manid;
		this.acomment_man = acomment_man;
		this.acomment_content = acomment_content;
		this.acomment_writetime = acomment_writetime;
		this.acomment_replaymanid = acomment_replaymanid;
		this.acomment_replayman = acomment_replayman;
		this.acomment_replaycontent = acomment_replaycontent;
		this.acomment_replaytime = acomment_replaytime;
		this.acomment_state = acomment_state;
	}

	public int getAcomment_id() {
		return acomment_id;
	}

	public void setAcomment_id(int acomment_id) {
		this.acomment_id = acomment_id;
	}

	public int getAcomment_manid() {
		return acomment_manid;
	}

	public void setAcomment_manid(int acomment_manid) {
		this.acomment_manid = acomment_manid;
	}

	public String getAcomment_man() {
		return acomment_man;
	}

	public void setAcomment_man(String acomment_man) {
		this.acomment_man = acomment_man;
	}

	public String getAcomment_content() {
		return acomment_content;
	}

	public void setAcomment_content(String acomment_content) {
		this.acomment_content = acomment_content;
	}

	public String getAcomment_writetime() {
		return acomment_writetime;
	}

	public void setAcomment_writetime(String acomment_writetime) {
		this.acomment_writetime = acomment_writetime;
	}

	public int getAcomment_replaymanid() {
		return acomment_replaymanid;
	}

	public void setAcomment_replaymanid(int acomment_replaymanid) {
		this.acomment_replaymanid = acomment_replaymanid;
	}

	public String getAcomment_replayman() {
		return acomment_replayman;
	}

	public void setAcomment_replayman(String acomment_replayman) {
		this.acomment_replayman = acomment_replayman;
	}

	public String getAcomment_replaycontent() {
		return acomment_replaycontent;
	}

	public void setAcomment_replaycontent(String acomment_replaycontent) {
		this.acomment_replaycontent = acomment_replaycontent;
	}

	public String getAcomment_replaytime() {
		return acomment_replaytime;
	}

	public void setAcomment_replaytime(String acomment_replaytime) {
		this.acomment_replaytime = acomment_replaytime;
	}

	public int getAcomment_state() {
		return acomment_state;
	}

	public void setAcomment_state(int acomment_state) {
		this.acomment_state = acomment_state;
	}

}
