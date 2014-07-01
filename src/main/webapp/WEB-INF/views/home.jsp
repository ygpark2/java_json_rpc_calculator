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
            $( "#one" ).click(function() {
                $("#result").val($("#result").val() + 1);
            });
            $( "#two" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#three" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#four" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#five" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#six" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#seven" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#eight" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#nine" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#zero" ).click(function() {
                alert( "Handler for .click() called." );
            });
            $( "#target" ).click(function() {
                alert( "Handler for .click() called." );
            });
            var foo = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});
            foo.call(
                    'plus', [ 3, 4 ],
                    function(result) { alert('Foo bar answered: ' + result ); },
                    function(error)  { console.log('There was an error', error); }
            );
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
                    <input type="text" class="form-control" id="value">
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
        </div>
        <div class="col-md-4"></div>
    </div>
</div>

</body>
</html>
