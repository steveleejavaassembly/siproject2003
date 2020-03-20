package com.example.demo.vo;


public class CommitteeLIstLombok {
	
	private String name;
	private String num;
	private String evaluation;
	private String party;
	private String election;
	private String electioncnt;
	private String mybill;
	
	
	public CommitteeLIstLombok(String name, String num, String evaluation, String party, String election,
			String electioncnt, String mybill) {
		super();
		this.name = name;
		this.num = num;
		this.evaluation = evaluation;
		this.party = party;
		this.election = election;
		this.electioncnt = electioncnt;
		this.mybill = mybill;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getEvaluation() {
		return evaluation;
	}


	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}


	public String getParty() {
		return party;
	}


	public void setParty(String party) {
		this.party = party;
	}


	public String getElection() {
		return election;
	}


	public void setElection(String election) {
		this.election = election;
	}


	public String getElectioncnt() {
		return electioncnt;
	}


	public void setElectioncnt(String electioncnt) {
		this.electioncnt = electioncnt;
	}


	public String getMybill() {
		return mybill;
	}


	public void setMybill(String mybill) {
		this.mybill = mybill;
	}
	
	
	
	

}
