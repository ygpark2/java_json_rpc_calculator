package com.ain.web.service;

public class CalculatorServiceImpl implements CalculatorService {

	public int point(int firstNum, int secondNum) {
		return firstNum;
	}
	
    public int plus(int firstNum, int secondNum) {
    	return firstNum + secondNum;
    }
    
    public int minus(int firstNum, int secondNum) {
    	return firstNum - secondNum;
    }
    
    public int multiply(int firstNum, int secondNum) {
    	return firstNum * secondNum;
    }
    
    public int divide(int firstNum, int secondNum) {
    	return firstNum / secondNum;
    }

}