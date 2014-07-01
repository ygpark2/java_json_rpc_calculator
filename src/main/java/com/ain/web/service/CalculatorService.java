package com.ain.web.service;

import com.googlecode.jsonrpc4j.JsonRpcService;

import java.math.BigDecimal;

public interface CalculatorService {
    BigDecimal point(String floatStr);
    int plus(int firstNum, int secondNum);
    int minus(int firstNum, int secondNum);
    int multiply(int firstNum, int secondNum);
    int divide(int firstNum, int secondNum);
    double log10(int value);
    double exp(int value);
}