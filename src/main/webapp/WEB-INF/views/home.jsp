<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<title>Calculator</title>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.blackcalculator-1.0.1.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        var langs = {value: 'Value', clear: 'Clear', backspace: 'Delete'};
        $('.calculator').blackCalculator({type:'advanced', allowKeyboard:true, language:langs});
    });
    </script>
	<link rel="stylesheet" type="text/css" href="resources/css/black_calculator.css">
<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="css/black_calculator_ie.css" /><style type="text/css">.calculator a, .calculator, .calculator form input[type=text] { behavior:url("css/PIE.htc"); position:relative; }</style><![endif]-->
</head>
<body>
<div class="calculator blackCalculator">

	<!-- 
	<form method="post" action="javascript:void(0)" id="blackCalculatorForm">
	<fieldset>
		<label for="blackCalculator">Valor</label>
		<input type="text" name="blackCalculator" id="blackCalculator">
	</fieldset>
	</form>
	<a href="javascript:void(0)" title="Voltar" style="width:58px; margin:0;" rel="<">⇐</a>
	<a href="javascript:void(0)" title="Limpar" rel="c" style="width:101px;">Limpar</a>
	<a href="javascript:void(0)" title="7" style="margin:0;" rel="7">7</a>
	<a href="javascript:void(0)" title="8" rel="8">8</a>
	<a href="javascript:void(0)" title="9" rel="9">9</a>
	<a href="javascript:void(0)" title="/" rel="/" style="width:57px;">/</a>
	<a href="javascript:void(0)" title="4" style="margin:0;" rel="4">4</a>
	<a href="javascript:void(0)" title="5" rel="5">5</a>
	<a href="javascript:void(0)" title="6" rel="6">6</a>
	<a href="javascript:void(0)" title="*" rel="*" style="width:57px;">*</a>
	<a href="javascript:void(0)" title="1" style="margin:0;" rel="1">1</a>
	<a href="javascript:void(0)" title="2" rel="2">2</a>
	<a href="javascript:void(0)" title="3" rel="3">3</a>
	<a href="javascript:void(0)" title="-" rel="-" style="width:57px;">-</a>
	<div class="clear"></div>
	<a href="javascript:void(0)" title="0" rel="0" style="margin:0;">0</a>
	<a href="javascript:void(0)" title="," rel=",">,</a>
	<a href="javascript:void(0)" title="=" rel="=">=</a>
	<a href="javascript:void(0)" title="+" rel="+" style="width:57px;">+</a>
	<div class="clear"></div>
	 -->

</div>
</body>
</html>
