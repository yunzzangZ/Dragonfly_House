package com.house.dragonfly.domain;

public class FAQ {
    private int faq_id;
    private String question;
    private String answer;

    // Getters and setters

    public int getFaq_id() {
        return faq_id;
    }

    public void setFaq_id(int faq_id) {
        this.faq_id = faq_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

	@Override
	public String toString() {
		return "FAQ [faq_id=" + faq_id + ", question=" + question + ", answer=" + answer + "]";
	}
    
    
}
