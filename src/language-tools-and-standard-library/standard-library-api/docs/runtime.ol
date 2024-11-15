


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
    <h1 class="service-name">Runtime</h1>
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
                <a href='#RuntimeInterface'>RuntimeInterface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='RuntimeInterface' class='resource-label-interface resource-label'>intf</th>
                <th id='RuntimeInterface' colspan='3' class='content-td'>RuntimeInterface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>callExit</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#any'>any</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Stops gracefully the execution of this service.<br>	  Calling this operation is equivalent to invoking the exit statement.<br>	 </span>
                    <button
                        onclick='openDetails("callExit")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_callExit' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_callExit' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Stops gracefully the execution of this service.<br>	  Calling this operation is equivalent to invoking the exit statement.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>dumpState</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns a pretty-printed string representation of<br>	  the local state of the invoking Jolie process and<br>	  the global state of this service.<br>	 </span>
                    <button
                        onclick='openDetails("dumpState")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_dumpState' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_dumpState' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns a pretty-printed string representation of<br>	  the local state of the invoking Jolie process and<br>	  the global state of this service.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getIncludePaths</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#GetIncludePathResponse'>GetIncludePathResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Get the include paths used by this interpreter</span>
                    <button
                        onclick='openDetails("getIncludePaths")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getIncludePaths' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getIncludePaths' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Get the include paths used by this interpreter</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getLocalLocation</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#any'>any</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Get the local in-memory location of this service.</span>
                    <button
                        onclick='openDetails("getLocalLocation")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getLocalLocation' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getLocalLocation' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Get the local in-memory location of this service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getOutputPort</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetOutputPortRequest'>GetOutputPortRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#GetOutputPortResponse'>GetOutputPortResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the definition of output port definition.<br>	  @throws OutputPortDoesNotExist if the requested output port does not exist.<br>	 </span>
                    <button
                        onclick='openDetails("getOutputPort")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getOutputPort' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>OutputPortDoesNotExist</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_getOutputPort' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the definition of output port definition.<br>	  @throws OutputPortDoesNotExist if the requested output port does not exist.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getOutputPorts</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#GetOutputPortsResponse'>GetOutputPortsResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns all the output ports used by this service.</span>
                    <button
                        onclick='openDetails("getOutputPorts")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getOutputPorts' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getOutputPorts' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns all the output ports used by this service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getProcessId</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the internal identifier of the executing Jolie process.</span>
                    <button
                        onclick='openDetails("getProcessId")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getProcessId' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getProcessId' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the internal identifier of the executing Jolie process.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getRedirection</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetRedirectionRequest'>GetRedirectionRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#MaybeString'>MaybeString</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Get the output port name that a redirection points to.</span>
                    <button
                        onclick='openDetails("getRedirection")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getRedirection' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getRedirection' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Get the output port name that a redirection points to.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getVersion</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the version of the Jolie interpreter running this service.</span>
                    <button
                        onclick='openDetails("getVersion")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getVersion' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getVersion' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the version of the Jolie interpreter running this service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getenv</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#MaybeString'>MaybeString</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the value of an environment variable.</span>
                    <button
                        onclick='openDetails("getenv")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getenv' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getenv' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the value of an environment variable.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>halt</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#HaltRequest'>HaltRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Halts non-gracefully the execution of this service.</span>
                    <button
                        onclick='openDetails("halt")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_halt' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_halt' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Halts non-gracefully the execution of this service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>loadEmbeddedService</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#LoadEmbeddedServiceRequest'>LoadEmbeddedServiceRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#any'>any</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Load an embedded service.</span>
                    <button
                        onclick='openDetails("loadEmbeddedService")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_loadEmbeddedService' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>RuntimeException</span>
(
                    
                    <a href='#RuntimeExceptionType'>RuntimeExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_loadEmbeddedService' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Load an embedded service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>loadLibrary</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Dynamically loads an external (jar) library.</span>
                    <button
                        onclick='openDetails("loadLibrary")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_loadLibrary' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#4#IOExceptionType'>4#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_loadLibrary' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Dynamically loads an external (jar) library.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>removeOutputPort</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Removes the output port with the requested name.</span>
                    <button
                        onclick='openDetails("removeOutputPort")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_removeOutputPort' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_removeOutputPort' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Removes the output port with the requested name.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>removeRedirection</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#GetRedirectionRequest'>GetRedirectionRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Remove a redirection at an input port</span>
                    <button
                        onclick='openDetails("removeRedirection")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_removeRedirection' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>RuntimeException</span>
(
                    
                    <a href='#RuntimeExceptionType'>RuntimeExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_removeRedirection' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Remove a redirection at an input port</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>setMonitor</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SetMonitorRequest'>SetMonitorRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Set the monitor for this service.</span>
                    <button
                        onclick='openDetails("setMonitor")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setMonitor' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_setMonitor' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Set the monitor for this service.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>setOutputPort</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SetOutputPortRequest'>SetOutputPortRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Set an output port.<br>	  If an output port with this name does not exist already,<br>	  this operation creates it.<br>	  Otherwise, the output port is replaced with this one.<br>	 </span>
                    <button
                        onclick='openDetails("setOutputPort")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setOutputPort' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_setOutputPort' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Set an output port.<br>	  If an output port with this name does not exist already,<br>	  this operation creates it.<br>	  Otherwise, the output port is replaced with this one.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>setRedirection</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SetRedirectionRequest'>SetRedirectionRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Set a redirection at an input port.<br>	  If the redirection with this name does not exist already,<br>	  this operation creates it.<br>	  Otherwise, the redirection is replaced with this one.<br>	 </span>
                    <button
                        onclick='openDetails("setRedirection")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setRedirection' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>RuntimeException</span>
(
                    
                    <a href='#RuntimeExceptionType'>RuntimeExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_setRedirection' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Set a redirection at an input port.<br>	  If the redirection with this name does not exist already,<br>	  this operation creates it.<br>	  Otherwise, the redirection is replaced with this one.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>stats</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#Stats'>Stats</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns information on the runtime state of the VM.</span>
                    <button
                        onclick='openDetails("stats")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_stats' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_stats' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns information on the runtime state of the VM.</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='GetIncludePathResponse' colspan='2' class='content-td'>GetIncludePathResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetIncludePathResponse<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;path
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The include paths of the interpreter</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='GetOutputPortRequest' colspan='2' class='content-td'>GetOutputPortRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetOutputPortRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the output port</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='GetOutputPortResponse' colspan='2' class='content-td'>GetOutputPortResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetOutputPortResponse<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;protocol
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The protocol name of the output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;location
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The location of the output port</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='GetOutputPortsResponse' colspan='2' class='content-td'>GetOutputPortsResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetOutputPortsResponse<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;port
[0,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;protocol
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The protocol name of the output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;location
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The location of the output port</td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'> The output ports used by this interpreter</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='GetRedirectionRequest' colspan='2' class='content-td'>GetRedirectionRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;GetRedirectionRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;inputPortName
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The target input port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;resourceName
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The resource name of the redirection to get</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='HaltRequest' colspan='2' class='content-td'>HaltRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;HaltRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;status
[0,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'> The status code to return to the execution environment</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='IOExceptionType' colspan='2' class='content-td'>IOExceptionType</th>
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
                <td class='content-td'><b>type</b>&nbsp;IOExceptionType<b>:</b>&nbsp;
                
<a href='#JavaExceptionType'>JavaExceptionType</a>









                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='IOExceptionType' colspan='2' class='content-td'>IOExceptionType</th>
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
                <td class='content-td'><b>type</b>&nbsp;IOExceptionType<b>:</b>&nbsp;
                
<a href='#IOExceptionType'>IOExceptionType</a>









                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='JavaExceptionType' colspan='2' class='content-td'>JavaExceptionType</th>
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
                <td class='content-td'><b>type</b>&nbsp;JavaExceptionType<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;stackTrace
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
                <th id='LoadEmbeddedServiceRequest' colspan='2' class='content-td'>LoadEmbeddedServiceRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;LoadEmbeddedServiceRequest<b>:</b>&nbsp;
                    
    
    <b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;filepath
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The path to the service to load</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;service
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the service to load, if relevant</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;type
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The type of the service, e.g., Jolie, Java, or JavaScript. Default: Jolie</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;params
[0,1]
:&nbsp;








undefined


    </td><td class='documentation'> The actual parameters (arguments) that should be passed to the service</td></tr>

    <tr><td></td><td class='content-td'>&#125;




    |
         


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;code
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
                <th id='MaybeString' colspan='2' class='content-td'>MaybeString</th>
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
                <td class='content-td'><b>type</b>&nbsp;MaybeString<b>:</b>&nbsp;
                    
    
    <b>void
</b>




    |
         


<b>string
</b>


















                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='RuntimeExceptionType' colspan='2' class='content-td'>RuntimeExceptionType</th>
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
                <td class='content-td'><b>type</b>&nbsp;RuntimeExceptionType<b>:</b>&nbsp;
                
<a href='#JavaExceptionType'>JavaExceptionType</a>









                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='SetMonitorRequest' colspan='2' class='content-td'>SetMonitorRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SetMonitorRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;protocol
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The protocol configuration for the monitor</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;location
[1,1]
:&nbsp;


<b>any
</b>







    </td><td class='documentation'> The location of the monitor</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='SetOutputPortRequest' colspan='2' class='content-td'>SetOutputPortRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SetOutputPortRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;protocol
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the protocol (e.g., sodep, http)</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The name of the output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;location
[1,1]
:&nbsp;


<b>any
</b>







    </td><td class='documentation'> The location of the output port</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='SetRedirectionRequest' colspan='2' class='content-td'>SetRedirectionRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SetRedirectionRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;inputPortName
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The target input port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;outputPortName
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The target output port</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;resourceName
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> The target resource name</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='Stats' colspan='2' class='content-td'>Stats</th>
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
                <td class='content-td'><b>type</b>&nbsp;Stats<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;memory
[1,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;total
[1,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;used
[1,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;free
[1,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;os
[1,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;availableProcessors
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'> Number of available processors</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;systemLoadAverage
[1,1]
:&nbsp;


<b>double
</b>







    </td><td class='documentation'> System load average</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> Name of the OS</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;arch
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> Architecture</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;version
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'> OS version</td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'> OS-related information</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;files
[1,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;openCount
[0,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'> Number of open files</td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;maxCount
[0,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'> Maximum number of open files allowed for this VM</td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'> Information on file descriptors</td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>

</body>

</html>

