<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Calculator</title>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.jsonrpcclient.js"></script>

    <script type="text/javascript">
        $(function() {
        	var operator = "";
        	var startNum = 0;
            $( "#one" ).click(function() {
                $("#result").val($("#result").val() + 1);
            });
            $( "#two" ).click(function() {
            	$("#result").val($("#result").val() + 2);
            });
            $( "#three" ).click(function() {
            	$("#result").val($("#result").val() + 3);
            });
            $( "#four" ).click(function() {
            	$("#result").val($("#result").val() + 4);
            });
            $( "#five" ).click(function() {
            	$("#result").val($("#result").val() + 5);
            });
            $( "#six" ).click(function() {
            	$("#result").val($("#result").val() + 6);
            });
            $( "#seven" ).click(function() {
            	$("#result").val($("#result").val() + 7);
            });
            $( "#eight" ).click(function() {
            	$("#result").val($("#result").val() + 8);
            });
            $( "#nine" ).click(function() {
            	$("#result").val($("#result").val() + 9);
            });
            $( "#zero" ).click(function() {
            	$("#result").val($("#result").val() + 0);
            });
            $( "#point" ).click(function() {
            	startNum = parseInt($("#result").val());
            	operator = "point";
            	$("#result").val("");
            });
            $( "#plus" ).click(function() {
            	startNum = parseInt($("#result").val());
            	operator = "plus";
            	$("#result").val("");
            });
            $( "#minus" ).click(function() {
            	startNum = parseInt($("#result").val());
            	operator = "minus";
            	$("#result").val("");
            });
            $( "#divide" ).click(function() {
            	startNum = parseInt($("#result").val());
            	operator = "divide";
            	$("#result").val("");
            });
            $( "#multiply" ).click(function() {
            	startNum = parseInt($("#result").val());
            	operator = "multiply";
            	$("#result").val("");
            });
            $( "#equal" ).click(function() {
                var jrc = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});
                var params = [];
                switch(operator) {
                	case "point":
                		params.push(startNum + "." + $("#result").val());
                    	break;
                	default:
                    	params.push( startNum );
                		params.push( parseInt($("#result").val()) );
            	}
                jrc.call(operator, params,
					function(result) { $("#result").val(result); },
					function(error)  { console.log('There was an error', error); }
                );
            });

            $( "#log" ).click(function() {
            	startNum = parseInt($("#result").val());
                var jrc = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});
                jrc.call("log10", [startNum],
					function(result) { $("#result").val(result); },
					function(error)  { console.log('There was an error', error); }
                );
            });

            $( "#sqrt" ).click(function() {
            	startNum = parseInt($("#result").val());
                var jrc = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});
                jrc.call("sqrt", [startNum],
					function(result) { $("#result").val(result); },
					function(error)  { console.log('There was an error', error); }
                );
            });

            $( "#exp" ).click(function() {
            	startNum = parseInt($("#result").val());
                var jrc = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});
                jrc.call("exp", [startNum],
					function(result) { $("#result").val(result); },
					function(error)  { console.log('There was an error', error); }
                );
            });
            
            $( "#clear" ).click(function() {
            	startNum = 0;
            	operator = "";
            	$("#result").val("");
            });
        });

    </script>

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h1>JSON RPC CALCULATOR</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <input type="text" class="form-control" id="result">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3"><button type="button" id="one" class="btn btn-default btn-block">1</button></div>
                <div class="col-md-3"><button type="button" id="two" class="btn btn-default btn-block">2</button></div>
                <div class="col-md-3"><button type="button" id="three" class="btn btn-default btn-block">3</button></div>
                <div class="col-md-3"><button type="button" id="point" class="btn btn-default btn-block">.</button></div>
            </div>
            <div class="row">
                <div class="col-md-3"><button type="button" id="four" class="btn btn-default btn-block">4</button></div>
                <div class="col-md-3"><button type="button" id="five" class="btn btn-default btn-block">5</button></div>
                <div class="col-md-3"><button type="button" id="six" class="btn btn-default btn-block">6</button></div>
                <div class="col-md-3"><button type="button" id="plus" class="btn btn-default btn-block">+</button></div>
            </div>
            <div class="row">
                <div class="col-md-3"><button type="button" id="seven" class="btn btn-default btn-block">7</button></div>
                <div class="col-md-3"><button type="button" id="eight" class="btn btn-default btn-block">8</button></div>
                <div class="col-md-3"><button type="button" id="nine" class="btn btn-default btn-block">9</button></div>
                <div class="col-md-3"><button type="button" id="minus" class="btn btn-default btn-block">-</button></div>
            </div>
            <div class="row">
                <div class="col-md-3"><button type="button" id="multiply" class="btn btn-default btn-block">*</button></div>
                <div class="col-md-3"><button type="button" id="zero" class="btn btn-default btn-block">0</button></div>
                <div class="col-md-3"><button type="button" id="divide" class="btn btn-default btn-block">/</button></div>
                <div class="col-md-3"><button type="button" id="equal" class="btn btn-default btn-block">=</button></div>
            </div>
            <div class="row">
                <div class="col-md-3"><button type="button" id="log" class="btn btn-default btn-block">log</button></div>
                <div class="col-md-3"><button type="button" id="exp" class="btn btn-default btn-block">exp</button></div>
                <div class="col-md-3"><button type="button" id="sqrt" class="btn btn-default btn-block">sqrt</button></div>
                <div class="col-md-3"><button type="button" id="clear" class="btn btn-default btn-block">Clear</button></div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>

</body>
</html>
