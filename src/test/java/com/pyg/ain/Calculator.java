package com.pyg.ain;

import static org.junit.Assert.*;

import com.googlecode.jsonrpc4j.JsonRpcHttpClient;

import org.junit.Before;
import org.junit.Test;

import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;

public class Calculator {
	private JsonRpcHttpClient client;

   	@Before
   	public void setUp() {
        try {
			client = new JsonRpcHttpClient(new URL("http://localhost:8080/ain/calculatorService"));
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   	}

	@Test
	public void testPoint() {
        try {
            BigDecimal point = client.invoke("point", new String[] { "382934.38978284" }, BigDecimal.class);
            assertEquals(new BigDecimal("382934.38978284"), point);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}
	
	@Test
	public void testPlus() {
        try {
            int plus = client.invoke("plus", new Object[] { 3, 4 }, Integer.class);
            assertEquals(7, plus);
        } catch (Throwable te) {
            fail("Caught IOException: " + te.getMessage());
        }
	}

	@Test
	public void testMinus() {
        try {
            int minus = client.invoke("minus", new Object[] { 8, 4 }, Integer.class);
            assertEquals(4, minus);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}

	@Test
	public void testMultiply() {
        try {
            int multiply = client.invoke("multiply", new Object[] { 3, 4 }, Integer.class);
            assertEquals(12, multiply);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}
	
	@Test
	public void testDivide() {
        try {
            int divide = client.invoke("divide", new Object[] { 8, 2 }, Integer.class);
            assertEquals(4, divide);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}

	@Test
	public void testLog() {
        try {
        	double log = client.invoke("log10", new Object[] { 100 }, Integer.class);
            assertEquals(2, log, 0.001);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}

	@Test
	public void testExp() {
        try {
            double exp = client.invoke("exp", new Object[] { 8 }, Integer.class);
            assertEquals(2980.0, exp, 0.1);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}

	@Test
	public void testSqrt() {
        try {
            double sqrt = client.invoke("sqrt", new Object[] { 64 }, Integer.class);
            assertEquals(8, sqrt, 0.001);
        } catch (Throwable te) {
        	fail("Caught IOException: " + te.getMessage());
        }
	}
}
