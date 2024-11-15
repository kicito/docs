


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
    <h1 class="service-name">File</h1>
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
                <a href='#FileInterface'>FileInterface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='FileInterface' class='resource-label-interface resource-label'>intf</th>
                <th id='FileInterface' colspan='3' class='content-td'>FileInterface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>convertFromBase64ToBinaryValue</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#raw'>raw</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> deprecated, please use base64ToRaw@Converter()() from converter.iol </span>
                    <button
                        onclick='openDetails("convertFromBase64ToBinaryValue")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_convertFromBase64ToBinaryValue' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_convertFromBase64ToBinaryValue' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> deprecated, please use base64ToRaw@Converter()() from converter.iol </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>convertFromBinaryToBase64Value</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#raw'>raw</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> deprecated, please use rawToBase64@Converter()() from converter.iol </span>
                    <button
                        onclick='openDetails("convertFromBinaryToBase64Value")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_convertFromBinaryToBase64Value' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_convertFromBinaryToBase64Value' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> deprecated, please use rawToBase64@Converter()() from converter.iol </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>copyDir</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#CopyDirRequest'>CopyDirRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  it copies a source directory into a destination one<br>	</span>
                    <button
                        onclick='openDetails("copyDir")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_copyDir' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>FileNotFound</span>
(
                    
                    

                    undefined 
 )
                    <br><span class='fault-name'>IOException</span>
(
                    
                    

                    undefined 
 )
                </td>
            </tr>
            <tr id='doc_copyDir' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  it copies a source directory into a destination one<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>delete</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#DeleteRequest'>DeleteRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("delete")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_delete' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_delete' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>deleteDir</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	   it deletes a directory recursively removing all its contents<br>	</span>
                    <button
                        onclick='openDetails("deleteDir")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_deleteDir' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_deleteDir' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	   it deletes a directory recursively removing all its contents<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>exists</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 it tests if the specified file or directory exists or not.<br>	</span>
                    <button
                        onclick='openDetails("exists")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_exists' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_exists' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 it tests if the specified file or directory exists or not.<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getFileSeparator</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getFileSeparator")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getFileSeparator' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getFileSeparator' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getMimeType</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("getMimeType")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getMimeType' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>FileNotFound</span>
(
                    
                    <a href='#FileNotFoundType'>FileNotFoundType</a>

 )
                </td>
            </tr>
            <tr id='doc_getMimeType' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getParentPath</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  Constructs the path to the parent directory.<br>	  Can be used to construct paths that does not exist so long as the path uses the system's filesystem path conventions.<br>	  Throws a InvalidPathException fault if input path is not a recognized system path or if the parent has no parent.<br>	 </span>
                    <button
                        onclick='openDetails("getParentPath")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getParentPath' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidPathException</span>
(
                    
                    <a href='#0#JavaExceptionType'>0#JavaExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_getParentPath' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  Constructs the path to the parent directory.<br>	  Can be used to construct paths that does not exist so long as the path uses the system's filesystem path conventions.<br>	  Throws a InvalidPathException fault if input path is not a recognized system path or if the parent has no parent.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getRealServiceDirectory</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the real filesystem directory (following links) from which the service has been launched </span>
                    <button
                        onclick='openDetails("getRealServiceDirectory")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getRealServiceDirectory' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_getRealServiceDirectory' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the real filesystem directory (following links) from which the service has been launched </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getRealServiceFileName</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the name of the real file (following links) from which the service has been launched </span>
                    <button
                        onclick='openDetails("getRealServiceFileName")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getRealServiceFileName' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_getRealServiceFileName' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the name of the real file (following links) from which the service has been launched </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getServiceDirectory</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the filesystem directory from which the service has been launched </span>
                    <button
                        onclick='openDetails("getServiceDirectory")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getServiceDirectory' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_getServiceDirectory' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the filesystem directory from which the service has been launched </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getServiceFileName</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the name of the file from which the service has been launched </span>
                    <button
                        onclick='openDetails("getServiceFileName")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getServiceFileName' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getServiceFileName' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the name of the file from which the service has been launched </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getServiceParentPath</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Returns the parent path of the service </span>
                    <button
                        onclick='openDetails("getServiceParentPath")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getServiceParentPath' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getServiceParentPath' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Returns the parent path of the service </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getSize</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#any'>any</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#int'>int</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  The size of any basic type variable.<br>	  - raw: buffer size<br>	  - void: 0<br>	  - boolean: 1<br>	  - integer types: int 4, long 8<br>	  - double: 8<br>	  - string: size in the respective platform encoding, on ASCII and latin1<br>	    equal to the string's length, on Unicode (UTF-8 etc.) >= string's length<br>	 </span>
                    <button
                        onclick='openDetails("getSize")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getSize' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getSize' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  The size of any basic type variable.<br>	  - raw: buffer size<br>	  - void: 0<br>	  - boolean: 1<br>	  - integer types: int 4, long 8<br>	  - double: 8<br>	  - string: size in the respective platform encoding, on ASCII and latin1<br>	    equal to the string's length, on Unicode (UTF-8 etc.) >= string's length<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>isDirectory</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  it returns if a filename is a directory or not. False if the file does not exist.<br>	</span>
                    <button
                        onclick='openDetails("isDirectory")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_isDirectory' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>FileNotFound</span>
(
                    
                    <a href='#FileNotFoundType'>FileNotFoundType</a>

 )
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_isDirectory' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  it returns if a filename is a directory or not. False if the file does not exist.<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>list</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ListRequest'>ListRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#ListResponse'>ListResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("list")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_list' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_list' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>mkdir</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	<br>	 it creates the directory specified in the request root. Returns true if the directory has been<br>	 created with success, false otherwise<br>	</span>
                    <button
                        onclick='openDetails("mkdir")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_mkdir' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_mkdir' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	<br>	 it creates the directory specified in the request root. Returns true if the directory has been<br>	 created with success, false otherwise<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>readFile</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ReadFileRequest'>ReadFileRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#undefined'>undefined</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  Reads some file's content into a Jolie structure<br>	 <br>	  Supported formats (ReadFileRequest.format):<br>	  - text (the default)<br>	  - base64 (same as binary but afterwards base64-encoded)<br>	  - binary<br>	  - xml<br>	  - xml_store (a type-annotated XML format)<br>	  - properties (Java properties file)<br>	  - json<br>	 <br>	  Child values: text, base64 and binary only populate the return's base value, the other formats fill in the child values as well.<br>	  - xml, xml_store: the XML root node will costitute a return's child value, the rest is filled in recursively<br>	  - properties: each property is represented by a child value<br>	  - json: each attribute corresponds to a child value, the default values (attribute "$" or singular value) are saved as the base values, nested arrays get mapped with the "_" helper childs (e.g. a[i][j] -> a._[i]._[j]), the rest is filled in recursively<br>	 </span>
                    <button
                        onclick='openDetails("readFile")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_readFile' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>FileNotFound</span>
(
                    
                    <a href='#FileNotFoundType'>FileNotFoundType</a>

 )
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_readFile' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  Reads some file's content into a Jolie structure<br>	 <br>	  Supported formats (ReadFileRequest.format):<br>	  - text (the default)<br>	  - base64 (same as binary but afterwards base64-encoded)<br>	  - binary<br>	  - xml<br>	  - xml_store (a type-annotated XML format)<br>	  - properties (Java properties file)<br>	  - json<br>	 <br>	  Child values: text, base64 and binary only populate the return's base value, the other formats fill in the child values as well.<br>	  - xml, xml_store: the XML root node will costitute a return's child value, the rest is filled in recursively<br>	  - properties: each property is represented by a child value<br>	  - json: each attribute corresponds to a child value, the default values (attribute "$" or singular value) are saved as the base values, nested arrays get mapped with the "_" helper childs (e.g. a[i][j] -> a._[i]._[j]), the rest is filled in recursively<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>rename</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#RenameRequest'>RenameRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("rename")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_rename' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_rename' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>setMimeTypeFile</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("setMimeTypeFile")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_setMimeTypeFile' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_setMimeTypeFile' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>toAbsolutePath</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  Constructs an absolute path to the target file or directory.<br>	  Can be used to construct an absolute path for new files that does not exist yet.<br>	  Throws a InvalidPathException fault if input is a relative path is not system recognized path.<br>	 </span>
                    <button
                        onclick='openDetails("toAbsolutePath")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_toAbsolutePath' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>InvalidPathException</span>
(
                    
                    <a href='#0#JavaExceptionType'>0#JavaExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_toAbsolutePath' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  Constructs an absolute path to the target file or directory.<br>	  Can be used to construct an absolute path for new files that does not exist yet.<br>	  Throws a InvalidPathException fault if input is a relative path is not system recognized path.<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>writeFile</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#WriteFileRequest'>WriteFileRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#void'>void</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  Writes a Jolie structure out to an external file<br>	 <br>	  Supported formats (WriteFileRequest.format):<br>	  - text (the default if base value not of type raw)<br>	  - binary (the default if base value of type raw)<br>	  - xml<br>	  - xml_store (a type-annotated XML format)<br>	  - json<br>	 <br>	 <br>	  Child values: text and binary only consider the content's (WriteFileRequest.content) base value, the other formats look at the child values as well.<br>	  - xml, xml_store: the XML root node will costitute the content's only child value, the rest gets read out recursively<br>	  - json: each child value corresponds to an attribute, the base values are saved as the default values (attribute "$" or singular value), the "_" helper childs disappear (e.g. a._[i]._[j] -> a[i][j]), the rest gets read out recursively<br>	 <br>	 	when format is xml and a schema is defined, the resulting xml follows the schema constraints.<br>	   Use "@NameSpace" in order to enable root element identification in the schema by specifing the namespace of the root.<br>	   Use "@Prefix" for forcing a prefix in an element.<br>	   Use "@ForceAttribute" for forcing an attribute in an element even if it is not defined in the corresponding schema<br>	 </span>
                    <button
                        onclick='openDetails("writeFile")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_writeFile' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                    <br><span class='fault-name'>FileNotFound</span>
(
                    
                    <a href='#FileNotFoundType'>FileNotFoundType</a>

 )
                    <br><span class='fault-name'>IOException</span>
(
                    
                    <a href='#3#IOExceptionType'>3#IOExceptionType</a>

 )
                </td>
            </tr>
            <tr id='doc_writeFile' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  Writes a Jolie structure out to an external file<br>	 <br>	  Supported formats (WriteFileRequest.format):<br>	  - text (the default if base value not of type raw)<br>	  - binary (the default if base value of type raw)<br>	  - xml<br>	  - xml_store (a type-annotated XML format)<br>	  - json<br>	 <br>	 <br>	  Child values: text and binary only consider the content's (WriteFileRequest.content) base value, the other formats look at the child values as well.<br>	  - xml, xml_store: the XML root node will costitute the content's only child value, the rest gets read out recursively<br>	  - json: each child value corresponds to an attribute, the base values are saved as the default values (attribute "$" or singular value), the "_" helper childs disappear (e.g. a._[i]._[j] -> a[i][j]), the rest gets read out recursively<br>	 <br>	 	when format is xml and a schema is defined, the resulting xml follows the schema constraints.<br>	   Use "@NameSpace" in order to enable root element identification in the schema by specifing the namespace of the root.<br>	   Use "@Prefix" for forcing a prefix in an element.<br>	   Use "@ForceAttribute" for forcing an attribute in an element even if it is not defined in the corresponding schema<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='CopyDirRequest' colspan='2' class='content-td'>CopyDirRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;CopyDirRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;from
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;to
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
                <th id='DeleteRequest' colspan='2' class='content-td'>DeleteRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;DeleteRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;isRegex
[0,1]
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
                <th id='FileNotFoundType' colspan='2' class='content-td'>FileNotFoundType</th>
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
                <td class='content-td'><b>type</b>&nbsp;FileNotFoundType<b>:</b>&nbsp;
                
<a href='#WeakJavaExceptionType'>WeakJavaExceptionType</a>









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
                
<a href='#JavaExceptionType'>JavaExceptionType</a>









                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='ListRequest' colspan='2' class='content-td'>ListRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;ListRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;regex
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;dirsOnly
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;directory
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;recursive
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;order
[0,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;byname
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;info
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
                <th id='ListResponse' colspan='2' class='content-td'>ListResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;ListResponse<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;result
[0,1]
:&nbsp;


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;info
[0,1]
:&nbsp;


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;size
[1,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;absolutePath
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastModified
[1,1]
:&nbsp;


<b>long
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;isDirectory
[1,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;isHidden
[1,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='ReadFileRequest' colspan='2' class='content-td'>ReadFileRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;ReadFileRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;filename
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[0,1]
:&nbsp;


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;skipMixedText
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;charset
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;stream
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'> if format is &quot;yaml&quot; and this is true, the file is read as a stream of multiple YAML documents which will be returned as a &quot;documents&quot; array in the response</td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='RenameRequest' colspan='2' class='content-td'>RenameRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;RenameRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;filename
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;to
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
                <th id='WeakJavaExceptionType' colspan='2' class='content-td'>WeakJavaExceptionType</th>
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
                <td class='content-td'><b>type</b>&nbsp;WeakJavaExceptionType<b>:</b>&nbsp;
                


<b>any
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;stackTrace
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
                <th id='WriteFileRequest' colspan='2' class='content-td'>WriteFileRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;WriteFileRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;filename
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[0,1]
:&nbsp;


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;schema
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;indent
[0,1]
:&nbsp;


<b>bool
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;doctype_system
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;&nbsp;&nbsp;encoding
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&nbsp;&nbsp;&#125;







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;content
[1,1]
:&nbsp;








undefined


    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;append
[0,1]
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

