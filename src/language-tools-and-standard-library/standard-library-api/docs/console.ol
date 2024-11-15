


<html>

<head>
    <style>
        body {
            font-family: Verdana, Helvetica, sans-serif;
        }

        .resource-label {
            height: 40px;
            font-size: 14px;
            text-align: center;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            width: 6%;
        }

        a {
            font-weight: bold;
            text-decoration: none;
            color: #600;
        }

        tr:hover td:not(:first-child) {
            background-color: #ffffcc;
        }


        .type-definition a:hover {
            color: #aa0000;
        }

        .type-definition {
            margin-left: 30px;
            margin-top: 50px;
            width: 90%;
        }

        .type-definition th {
            font-size: 20px;
            text-align: left;
            background-color: #fff;
            color: black;
            border-radius: 5px;
        }

        .type-definition th.content-td {
            border-bottom: 1px solid #555;
            border-radius: 0px;
        }

        .type-definition tr td {

            border-bottom: 1px dotted #ddd;
        }

        .type-definition tr td:first-child {
            border-bottom: 0px;
        }

        .type-definition .resource-label-type {
            background-color: red;
            color: white;
            text-align: center;
            font-size: 14px;
        }

        .content-td {
            padding-left: 20px;
            background-color: #eee;
            padding-bottom: 5px;
            padding-top: 5px;
            border-radius: 5px;
            font-size: 15px;
            font-family: 'Courier New';
        }

        .documentation {
            font-style: italic;
        }

        .documentation-inline-block {
            display: inline-block;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            width: 420px;
            font-size: 12px;
            vertical-align: middle;
        }

        .documentation-inline-block br {
            display: none;
        }

        .interface-definition {
            margin-left: 30px;
            margin-top: 50px;
            width: 90%;
        }

        .interface-definition .resource-label-interface {
            background-color: #107710;
            color: white;
            text-align: center;
            font-size: 14px;
        }

        .interface-definition th {
            font-size: 20px;
            text-align: left;
            background-color: #fff;
            color: black;
            border-radius: 5px;
        }

        .interface-definition th.content-td {
            border-bottom: 1px solid #555;
            border-radius: 0px;
        }

        .operation-name {
            font-weight: bold;
            font-size: 18px;
            padding-left: 20px;
        }

        .operation-button {
            display: inline;
            font-size: 10px;
            border: 1px solid #666;
            padding: 4px;
            margin-right: 10px;
            cursor: pointer;
        }

        .operation-button:hover {
            background-color: #666;
            color: white;
        }

        .rr-type {
            background-color: #929900;
            color: white;
        }

        .ow-type {
            background-color: #cca133;
            color: white;
        }

        .message-type {
            font-style: italic;
            font-size: 12px;
            color: #444;
        }

        .interface-definition a {
            font-size: 14px;
        }

        .interface-definition .content-td {
            padding-top: 10px;
            padding-bottom: 10px;
            width: 32%;
        }

        .fault-name {
            font-size: 14px;
        }

        .port-definition a {
            font-size: 14px;
            color: #050;
        }

        .port-definition th.content-td {
            border-bottom: 1px solid #555;
            border-radius: 0px;
        }

        .port-definition .resource-label-ip {
            background-color: blue;
            color: white;
            text-align: center;
            font-size: 14px;
        }

        .port-definition .resource-label-op {
            background-color: black;
            color: white;
            text-align: center;
            font-size: 14px;
        }

        .port-definition th {
            font-size: 20px;
            text-align: left;
            background-color: #fff;
            color: black;
        }

        .port-definition {
            margin-left: 30px;
            margin-top: 50px;
            width: 90%;
        }

        .port-element {
            font-weight: bold;
        }

        .port-definition .content-td {
            width: 44%;
        }
        /* hacky fix */
        .service-name {
            font-size: 30px;
            margin-left: 30px;
            margin-top: 50px;
            margin-bottom: -50px;
        }
        .service-name:empty {
            display: none;
        }
    </style>
    <script>
        function openDetails(operation) {
            if (document.getElementById("doc_" + operation).style.display == "none") {
                document.getElementById("doc_" + operation).style.display = "table-row";
                document.getElementById("types_" + operation).style.display = "table-row";
                document.getElementById("faults_" + operation).style.display = "table-row"
            } else {
                document.getElementById("doc_" + operation).style.display = "none";
                document.getElementById("types_" + operation).style.display = "none";
                document.getElementById("faults_" + operation).style.display = "none"
            }
        }
    </script>

</head>

<body>
    <h1 class="service-name">Console</h1>
    <table class='port-definition'>
        <tr>
            <th class='resource-label- resource-label'></th>
            <th id='ConsoleInput' colspan='2' class='content-td'>ConsoleInput</th>
        </tr>
        <tr>
            <td></td>
            <td class='content-td port-element'>Location:</td>
            <td class='content-td'>local</td>
        </tr>
        <tr>
            <td></td>
            <td class='content-td port-element'>Protocol:</td>
            <td class='content-td'></td>
        </tr>
        <tr>
            <td></td>
            <td class='content-td port-element'>Interfaces:</td>
            <td class='content-td'>
                <a href='#ConsoleIface'>ConsoleIface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='ConsoleIface' class='resource-label-interface resource-label'>intf</th>
                <th id='ConsoleIface' colspan='3' class='content-td'>ConsoleIface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>enableTimestamp</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#EnableTimestampRequest'>EnableTimestampRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		It enables timestamp inline printing for each console output operation call: print, println<br>		Parameter format allows to specifiy the timestamp output format. Bad Format will be printed out if format value is not allowed.<br>	</span>
                    <button
                        onclick='openDetails("enableTimestamp")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_enableTimestamp' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_enableTimestamp' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		It enables timestamp inline printing for each console output operation call: print, println<br>		Parameter format allows to specifiy the timestamp output format. Bad Format will be printed out if format value is not allowed.<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>print</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#undefined'>undefined</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("print")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_print' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_print' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>println</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#undefined'>undefined</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("println")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_println' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_println' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>readLine</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ReadLineRequest'>ReadLineRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 Read a line from the console using a synchronous call<br>	</span>
                    <button
                        onclick='openDetails("readLine")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_readLine' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_readLine' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 Read a line from the console using a synchronous call<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>registerForInput</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#RegisterForInputRequest'>RegisterForInputRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  it enables the console for input listening<br>	  parameter enableSessionListener enables console input listening for more than one service session (default=false)<br>	</span>
                    <button
                        onclick='openDetails("registerForInput")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_registerForInput' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_registerForInput' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  it enables the console for input listening<br>	  parameter enableSessionListener enables console input listening for more than one service session (default=false)<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>subscribeSessionListener</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SubscribeSessionListener'>SubscribeSessionListener</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 it receives a token string which identifies a service session.<br>	 it enables the session to receive inputs from the console<br>	</span>
                    <button
                        onclick='openDetails("subscribeSessionListener")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_subscribeSessionListener' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_subscribeSessionListener' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 it receives a token string which identifies a service session.<br>	 it enables the session to receive inputs from the console<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>unsubscribeSessionListener</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#UnsubscribeSessionListener'>UnsubscribeSessionListener</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 it disables a session to receive inputs from the console, previously registered with subscribeSessionListener operation<br>	</span>
                    <button
                        onclick='openDetails("unsubscribeSessionListener")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_unsubscribeSessionListener' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_unsubscribeSessionListener' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 it disables a session to receive inputs from the console, previously registered with subscribeSessionListener operation<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='EnableTimestampRequest' colspan='2' class='content-td'>EnableTimestampRequest</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan='2' class='documentation'></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class='content-td'><b>type</b>&nbsp;EnableTimestampRequest<b>:</b>&nbsp;
                


<b>bool
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='ReadLineRequest' colspan='2' class='content-td'>ReadLineRequest</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan='2' class='documentation'></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class='content-td'><b>type</b>&nbsp;ReadLineRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;secret
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='RegisterForInputRequest' colspan='2' class='content-td'>RegisterForInputRequest</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan='2' class='documentation'></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class='content-td'><b>type</b>&nbsp;RegisterForInputRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;enableSessionListener
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='SubscribeSessionListener' colspan='2' class='content-td'>SubscribeSessionListener</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan='2' class='documentation'></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class='content-td'><b>type</b>&nbsp;SubscribeSessionListener<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;token
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='UnsubscribeSessionListener' colspan='2' class='content-td'>UnsubscribeSessionListener</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan='2' class='documentation'></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class='content-td'><b>type</b>&nbsp;UnsubscribeSessionListener<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;token
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>

</body>

</html>

