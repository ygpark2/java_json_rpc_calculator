package com.pyg.ain;

import static org.junit.Assert.*;

import com.googlecode.jsonrpc4j.JsonRpcHttpClient;
import org.junit.Test;

import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;

public class Calculator {
	@Test
	public void test() {
        System.out.println("============================");
        System.out.println(new BigDecimal("343434.342434"));
        try {
            JsonRpcHttpClient client = new JsonRpcHttpClient(new URL("http://localhost:8080/calculatorService"));

            BigDecimal point = client.invoke("point", new Object[] { "34234.4234" }, BigDecimal.class);
            int plus = client.invoke("plus", new Object[] { 3, 4 }, Integer.class);
            int minus = client.invoke("minus", new Object[] { 8, 4 }, Integer.class);
            int multiply = client.invoke("multiply", new Object[] { 3, 4 }, Integer.class);
            int divide = client.invoke("divide", new Object[] { 8, 2 }, Integer.class);

            System.out.println("point => " + point);
            System.out.println("sum => " + plus);
            System.out.println("sum => " + minus);
            System.out.println("sum => " + multiply);
            System.out.println("sum => " + divide);

        } catch (Throwable te) {
            System.err.println("Caught IOException: " + te.getMessage());
        }



		fail("Not yet implemented");
	}

}
