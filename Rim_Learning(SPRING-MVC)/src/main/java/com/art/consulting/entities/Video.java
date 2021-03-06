package com.art.consulting.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Video {
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO) 
	private int  idVideo;
	
	private String dashUrl ;
	private String title ;
	private String hlsUrl;
	private String url_photo_poster;
	
	@ManyToOne
	@JoinColumn(name="training_id")
	private Training training ;
	
	
	public Video() {}




	




	public Video(int idVideo, String dashUrl, String title, String hlsUrl, String url_photo_poster, Training training) {
		super();
		this.idVideo = idVideo;
		this.dashUrl = dashUrl;
		this.title = title;
		this.hlsUrl = hlsUrl;
		this.url_photo_poster = url_photo_poster;
		this.training = training;
	}









	public int getIdVideo() {
		return idVideo;
	}


	public void setIdVideo(int idVideo) {
		this.idVideo = idVideo;
	}


	public String getDashUrl() {
		return dashUrl;
	}


	public void setDashUrl(String dashUrl) {
		this.dashUrl = dashUrl;
	}


	public String getHlsUrl() {
		return hlsUrl;
	}


	public void setHlsUrl(String hlsUrl) {
		this.hlsUrl = hlsUrl;
	}


	public Training getTraining() {
		return training;
	}


	public void setTraining(Training training) {
		this.training = training;
	}




	public String getTitle() {
		return title;
	}




	public void setTitle(String title) {
		this.title = title;
	}









	public String getUrl_photo_poster() {
		return url_photo_poster;
	}









	public void setUrl_photo_poster(String url_photo_poster) {
		this.url_photo_poster = url_photo_poster;
	}
	

	
	
	
}
