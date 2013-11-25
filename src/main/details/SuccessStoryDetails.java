package main.details;

import java.sql.Date;

public class SuccessStoryDetails {
	
	int SuccessStoryId;
	String participants;
	Date date;
	String reference;
	String character;
	String conclusion;
	int bureauId;
	int fieldid;
	String filepath;
	
	public int getSuccessStoryId() {
		return SuccessStoryId;
	}
	public void setSuccessStoryId(int successStoryId) {
		SuccessStoryId = successStoryId;
	}
	public String getParticipants() {
		return participants;
	}
	public void setParticipants(String participants) {
		this.participants = participants;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public int getBureauId() {
		return bureauId;
	}
	public void setBureauId(int bureauId) {
		this.bureauId = bureauId;
	}
	public int getFieldId() {
		return fieldid;
	}
	public void setFieldId(int fieldId) {
		this.fieldid = fieldId;
	}
	public String getConclusion() {
		return conclusion;
	}
	public void setConclusion(String conclusion) {
		this.conclusion = conclusion;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

}
