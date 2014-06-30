package com.ain.web.service;

import com.googlecode.jsonrpc4j.JsonRpcService;

@JsonRpcService("/json/rpc/calculator.json")
public interface CalculatorService {
	int point(int firstNum, int secondNum);
    int plus(int firstNum, int secondNum);
    int minus(int firstNum, int secondNum);
    int multiply(int firstNum, int secondNum);
    int divide(int firstNum, int secondNum);
}