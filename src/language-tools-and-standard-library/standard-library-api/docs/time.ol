


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
    <h1 class="service-name">Time</h1>
    <table class='port-definition'>
        <tr>
            <th class='resource-label- resource-label'></th>
            <th id='ip' colspan='2' class='content-td'>ip</th>
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
                <a href='#TimeInterface'>TimeInterface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='TimeInterface' class='resource-label-interface resource-label'>intf</th>
                <th id='TimeInterface' colspan='3' class='content-td'>TimeInterface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>cancelTimeout</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#long'>long</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		It Cancels a timeout from a long-value created from #scheduleTimeout<br>		</span>
                    <button
                        onclick='openDetails("cancelTimeout")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_cancelTimeout' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_cancelTimeout' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		It Cancels a timeout from a long-value created from #scheduleTimeout<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getCurrentDateTime</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#CurrentDateTimeRequestType'>CurrentDateTimeRequestType</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		It returns the current date time as a string<br>		</span>
                    <button
                        onclick='openDetails("getCurrentDateTime")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getCurrentDateTime' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getCurrentDateTime' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		It returns the current date time as a string<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getCurrentDateValues</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#DateValuesType'>DateValuesType</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		 Returns the current date split in three fields: day, month and year<br>		</span>
                    <button
                        onclick='openDetails("getCurrentDateValues")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getCurrentDateValues' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getCurrentDateValues' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		 Returns the current date split in three fields: day, month and year<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getCurrentTimeMillis</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#long'>long</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		 Warning: this is temporary and subject to future change as soon as long is supported by Jolie.<br>		</span>
                    <button
                        onclick='openDetails("getCurrentTimeMillis")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getCurrentTimeMillis' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getCurrentTimeMillis' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		 Warning: this is temporary and subject to future change as soon as long is supported by Jolie.<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getDateDiff</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#DiffDateRequestType'>DiffDateRequestType</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#int'>int</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getDateDiff")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getDateDiff' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getDateDiff' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getDateTime</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetDateTimeRequest'>GetDateTimeRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#GetDateTimeResponse'>GetDateTimeResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		 It returns a date time in a string format starting from a timestamp<br>		</span>
                    <button
                        onclick='openDetails("getDateTime")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getDateTime' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getDateTime' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		 It returns a date time in a string format starting from a timestamp<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getDateTimeValues</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetTimestampFromStringRequest'>GetTimestampFromStringRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#DateTimeType'>DateTimeType</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getDateTimeValues")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getDateTimeValues' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidDate</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_getDateTimeValues' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getDateValues</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#DateValuesRequestType'>DateValuesRequestType</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#DateValuesType'>DateValuesType</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		 Converts an input string into a date expressed by means of<br>		 three elements: day, month and year. The request may specify the<br>		 date parsing format. See #DateValuesRequestType for details.<br>		</span>
                    <button
                        onclick='openDetails("getDateValues")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getDateValues' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidDate</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_getDateValues' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		 Converts an input string into a date expressed by means of<br>		 three elements: day, month and year. The request may specify the<br>		 date parsing format. See #DateValuesRequestType for details.<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getTimeDiff</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetTimeDiffRequest'>GetTimeDiffRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#int'>int</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getTimeDiff")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getTimeDiff' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getTimeDiff' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getTimeFromMilliSeconds</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#int'>int</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#TimeValuesType'>TimeValuesType</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getTimeFromMilliSeconds")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getTimeFromMilliSeconds' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getTimeFromMilliSeconds' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getTimeValues</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#TimeValuesType'>TimeValuesType</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getTimeValues")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getTimeValues' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getTimeValues' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getTimestampFromString</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetTimestampFromStringRequest'>GetTimestampFromStringRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#long'>long</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getTimestampFromString")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getTimestampFromString' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidTimestamp</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_getTimestampFromString' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>scheduleTimeout</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ScheduleTimeOutRequest'>ScheduleTimeOutRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#long'>long</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		 Schedules a timeout, which can be cancelled using #cancelTimeout from the returned string. Default .timeunit value is MILLISECONDS, .operation default is "timeout".<br>		</span>
                    <button
                        onclick='openDetails("scheduleTimeout")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_scheduleTimeout' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidTimeUnit</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_scheduleTimeout' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		 Schedules a timeout, which can be cancelled using #cancelTimeout from the returned string. Default .timeunit value is MILLISECONDS, .operation default is "timeout".<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td 
                    class='resource-label ow-type'>ow
                </td>
                <td class='content-td operation-name'><span>setNextTimeout</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SetNextTimeOutRequest'>SetNextTimeOutRequest</a>

                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		  it sets a timeout whose duration is in milliseconds and it is represented by the root value of the message<br>		  When the alarm is triggered a message whose content is defined in .message is sent to operation defined in .operation<br>		  ( default: timeout )<br>		</span>
                    <button
                        onclick='openDetails("setNextTimeout")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setNextTimeout' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_setNextTimeout' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		  it sets a timeout whose duration is in milliseconds and it is represented by the root value of the message<br>		  When the alarm is triggered a message whose content is defined in .message is sent to operation defined in .operation<br>		  ( default: timeout )<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td 
                    class='resource-label ow-type'>ow
                </td>
                <td class='content-td operation-name'><span>setNextTimeoutByDateTime</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#undefined'>undefined</a>

                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("setNextTimeoutByDateTime")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setNextTimeoutByDateTime' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_setNextTimeoutByDateTime' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td 
                    class='resource-label ow-type'>ow
                </td>
                <td class='content-td operation-name'><span>setNextTimeoutByTime</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#undefined'>undefined</a>

                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("setNextTimeoutByTime")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setNextTimeoutByTime' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_setNextTimeoutByTime' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>sleep</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#int'>int</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>		It waits for a period specified in the request (in milliseconds)<br>		</span>
                    <button
                        onclick='openDetails("sleep")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_sleep' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_sleep' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>		It waits for a period specified in the request (in milliseconds)<br>		</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td 
                    class='resource-label ow-type'>ow
                </td>
                <td class='content-td operation-name'><span>stopNextTimeout</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> It stops the current timeout previously set with a setNextTimeout </span>
                    <button
                        onclick='openDetails("stopNextTimeout")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_stopNextTimeout' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_stopNextTimeout' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> It stops the current timeout previously set with a setNextTimeout </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='CurrentDateTimeRequestType' colspan='2' class='content-td'>CurrentDateTimeRequestType</th>
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
                <td class='content-td'><b>type</b>&nbsp;CurrentDateTimeRequestType<b>:</b>&nbsp;
                


<b>void
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
                <th id='DateTimeType' colspan='2' class='content-td'>DateTimeType</th>
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
                <td class='content-td'><b>type</b>&nbsp;DateTimeType<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;month
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;hour
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;year
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;day
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;minute
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;second
[1,1]
:&nbsp;


<b>int
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
                <th id='DateValuesRequestType' colspan='2' class='content-td'>DateValuesRequestType</th>
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
                <td class='content-td'><b>type</b>&nbsp;DateValuesRequestType<b>:</b>&nbsp;
                


<b>string
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
                <th id='DateValuesType' colspan='2' class='content-td'>DateValuesType</th>
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
                <td class='content-td'><b>type</b>&nbsp;DateValuesType<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;month
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;year
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;day
[1,1]
:&nbsp;


<b>int
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
                <th id='DiffDateRequestType' colspan='2' class='content-td'>DiffDateRequestType</th>
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
                <td class='content-td'><b>type</b>&nbsp;DiffDateRequestType<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;date2
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;date1
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
                <th id='GetDateTimeRequest' colspan='2' class='content-td'>GetDateTimeRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetDateTimeRequest<b>:</b>&nbsp;
                


<b>long
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
                <th id='GetDateTimeResponse' colspan='2' class='content-td'>GetDateTimeResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetDateTimeResponse<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;month
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;hour
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;year
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;day
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;minute
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;second
[1,1]
:&nbsp;


<b>int
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
                <th id='GetTimeDiffRequest' colspan='2' class='content-td'>GetTimeDiffRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetTimeDiffRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;time1
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;time2
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
                <th id='GetTimestampFromStringRequest' colspan='2' class='content-td'>GetTimestampFromStringRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetTimestampFromStringRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;language
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
                <th id='ScheduleTimeOutRequest' colspan='2' class='content-td'>ScheduleTimeOutRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;ScheduleTimeOutRequest<b>:</b>&nbsp;
                


<b>int
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;message
[0,1]
:&nbsp;








undefined


    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;operation
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;timeunit
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
                <th id='SetNextTimeOutRequest' colspan='2' class='content-td'>SetNextTimeOutRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SetNextTimeOutRequest<b>:</b>&nbsp;
                


<b>int
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;message
[0,1]
:&nbsp;








undefined


    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;operation
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
                <th id='TimeValuesType' colspan='2' class='content-td'>TimeValuesType</th>
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
                <td class='content-td'><b>type</b>&nbsp;TimeValuesType<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;hour
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;minute
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;second
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>

</body>

</html>

