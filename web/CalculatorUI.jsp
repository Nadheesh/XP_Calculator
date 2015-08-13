<!DOCTYPE html>
<html>
    <head>
        <title>Simple Calculator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            input[type="button"]{
                background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #606060), color-stop(1, #606060) );
                background:-moz-linear-gradient( center top, #606060 5%, #606060 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#606060', endColorstr='#606060');
                background-color:#606060;
                border:1px solid #606060;
                display:inline-block;
                color:#fff;
                font-family:Arial;
                font-size:50px;
                line-height:28px;
                text-decoration:none;
                text-align:center;
                margin-bottom:1.5px;
                margin-left: 1.5px;
                margin-right:1.5px ;
                margin-top:1.5px ;
                height: 75px; 
            }
            input[type="button"]{
            width: 184px;
            }
            #btnC{
                    width:372.7px;
            }
            #btn0{
                    width:374.7px;
            }
            #btn0,#btndecimal,#btndivide {
                margin-right: 0.1px;
            }
            #btn7,#btn4,#btn1,#btn0,#btnequals {
                margin-left: 0.01px;
            }        
            #btnequals {
                height: 61px;
                width: 944px;
                margin-top: 3px;
            }
            input[type="button"]:active {
                position:relative;
                background:#989898;
            } 
            input:focus {
                outline:0;
            }
            input[type="Text"] {
                padding-left: 10px;
                margin-bottom: 1.5px;
                font-size: 100px;
                background-color: #202020 ;
                height:195px;
                width: 935px;
                border:none;
                color:white;
            }
            body {
                background-color: #080808 ;
                overflow: hidden;
            }
            #about {
                font-size: 45px;
            }
        </style>
    </head>
    <body>
        <FORM name="Keypad" action="">
            <input name="ReadOut" id="output" type="Text" size=24 value="0" readonly>
            <table>
                <tr>
                    <td><input id="btn7" type="Button" value="  7  " onclick="NumPressed(7)"></td>
                    <td><input id="btn8" type="Button" value="  8  " onclick="NumPressed(8)"></td>        
                    <td><input id="btn9" type="Button" value="  9  " onclick="NumPressed(9)"></td>
                    <td colspan="2"><input id="btnC" type="Button" value="  C  " onclick="Clear()"></td>
                </tr>
                <tr>
                    <td><input id="btn4" type="Button" value="  4" onclick="NumPressed(4)"></td>
                    <td><input id="btn5" type="Button" value="  5   "onclick="NumPressed(5)"></td>        
                    <td><input id="btn6" type="Button" value="  6  " onclick="NumPressed(6)"></td>
                    <td><input id="btnplusminus" type="Button" value=" +/- " onclick="Neg()"></td>
                    <td><input id="btnplus" type="Button" value="  +  " onclick="Operation('+')"></td>
                </tr>
                <tr>
                    <td><input id="btn1" type="Button" value="  1  " onclick="NumPressed(1)"></td>
                    <td><input id="btn2" type="Button" value="  2  " onclick="NumPressed(2)"></td>        
                    <td><input id="btn3" type="Button" value="  3  " onclick="NumPressed(3)"></td>
                    <td><input id="btnmultiply" type="Button" value="  *  " onclick="Operation('*')"></td>
                    <td><input id="btnminus" type="Button" value="   -   " onclick="Operation('-')"></td>
                </tr>
            </table>
            <input id="btn0" type="Button" value="  0  " onclick="NumPressed(0)">
            <input id="btndecimal" type="Button" value="   .  " onclick="Decimal()">      
            <input id="btndivide" type="Button" value="   /   " onclick="Operation('/')">
            <input id="about" type="Button" value="Extra"></br>
            <input id="btnequals" type="Button" value="  =  " onclick="Operation('=')">
        </FORM>
        <script>
            var FKeyPad = document.Keypad;
            var Accumulate = 0;
            var FlagNewNum = false;
            var PendingOp = "";
            function NumPressed (Num) {
                if (FlagNewNum) {
                    FKeyPad.ReadOut.value  = Num;
                    FlagNewNum = false;
                }
                else {
                    if (FKeyPad.ReadOut.value == "0")
                        FKeyPad.ReadOut.value = Num;
                    else
                        FKeyPad.ReadOut.value += Num;
                }
            }
            function Operation (Op) {
                var Readout = FKeyPad.ReadOut.value;
                if (FlagNewNum && PendingOp != "=");
                else
                {
                    FlagNewNum = true;
                    if ( '+' == PendingOp )
                        Accumulate += parseFloat(Readout);
                    else if ( '-' == PendingOp )
                        Accumulate -= parseFloat(Readout);
                    else if ( '/' == PendingOp )
                        Accumulate /= parseFloat(Readout);
                    else if ( '*' == PendingOp )
                        Accumulate *= parseFloat(Readout);
                    else
                        Accumulate = parseFloat(Readout);
                    FKeyPad.ReadOut.value = Accumulate;
                    PendingOp = Op;
                }
            }
            function Decimal () {
                var curReadOut = FKeyPad.ReadOut.value;
                if (FlagNewNum) {
                    curReadOut = "0.";
                    FlagNewNum = false;
                }
                else
                {
                    if (curReadOut.indexOf(".") == -1)
                        curReadOut += ".";
                }
                FKeyPad.ReadOut.value = curReadOut;
            }
            function ClearEntry () {
                FKeyPad.ReadOut.value = "0";
                FlagNewNum = true;
            }
            function Clear () {
                Accumulate = 0;
                PendingOp = "";
                ClearEntry();
            }
            function Neg () {
                FKeyPad.ReadOut.value = parseFloat(FKeyPad.ReadOut.value) * -1;
            }
            function Percent () {
                FKeyPad.ReadOut.value = (parseFloat(FKeyPad.ReadOut.value) / 100) * parseFloat(Accumulate);
            }
        </script>
        <script>
            function myFunction() {
                alert("TegTech 2014");
            }
        </script>
    </body>
</html>