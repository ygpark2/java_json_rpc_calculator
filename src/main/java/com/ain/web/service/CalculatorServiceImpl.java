package com.ain.web.service;

import java.math.BigDecimal;

public class CalculatorServiceImpl implements CalculatorService {

	public BigDecimal point(String floatStr) {
		return new BigDecimal(floatStr);
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

    public double log10(int value) { return Math.log10(value); }

    public double exp(int value) { return Math.exp(value); }
    
    public double sqrt(int value) { return Math.sqrt(value); }
}