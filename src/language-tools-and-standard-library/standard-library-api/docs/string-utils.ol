


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
    <h1 class="service-name">StringUtils</h1>
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
                <a href='#StringUtilsInterface'>StringUtilsInterface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='StringUtilsInterface' class='resource-label-interface resource-label'>intf</th>
                <th id='StringUtilsInterface' colspan='3' class='content-td'>StringUtilsInterface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>contains</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ContainsRequest'>ContainsRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  Returns true if the string contains .substring<br>	 </span>
                    <button
                        onclick='openDetails("contains")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_contains' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_contains' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  Returns true if the string contains .substring<br>	 </td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>endsWith</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#EndsWithRequest'>EndsWithRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	  checks if a string ends with a given suffix<br>	</span>
                    <button
                        onclick='openDetails("endsWith")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_endsWith' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_endsWith' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	  checks if a string ends with a given suffix<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>find</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#MatchRequest'>MatchRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#MatchResult'>MatchResult</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("find")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_find' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_find' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>fmt</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#FormatRequest'>FormatRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'> Formats a string.<br>	 For example, a request value "Hello {name}" { name = "Homer" } is transformed into "Hello Homer"<br>	 You can use formatting rules as in Java's MessageFormat, for example, "Up to {pct,number,percent}" { pct = 0.6 } becomes "Up to 60%"<br>	</span>
                    <button
                        onclick='openDetails("fmt")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_fmt' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_fmt' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'> Formats a string.<br>	 For example, a request value "Hello {name}" { name = "Homer" } is transformed into "Hello Homer"<br>	 You can use formatting rules as in Java's MessageFormat, for example, "Up to {pct,number,percent}" { pct = 0.6 } becomes "Up to 60%"<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>getRandomUUID</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#void'>void</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 it returns a random UUID<br>	</span>
                    <button
                        onclick='openDetails("getRandomUUID")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_getRandomUUID' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_getRandomUUID' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 it returns a random UUID<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>indexOf</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#IndexOfRequest'>IndexOfRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#IndexOfResponse'>IndexOfResponse</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("indexOf")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_indexOf' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_indexOf' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>join</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#JoinRequest'>JoinRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("join")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_join' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_join' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>leftPad</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#PadRequest'>PadRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("leftPad")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_leftPad' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_leftPad' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>length</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#int'>int</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("length")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_length' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_length' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>match</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#MatchRequest'>MatchRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#MatchResult'>MatchResult</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("match")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_match' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_match' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>replaceAll</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ReplaceRequest'>ReplaceRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("replaceAll")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_replaceAll' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_replaceAll' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>replaceFirst</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#ReplaceRequest'>ReplaceRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("replaceFirst")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_replaceFirst' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_replaceFirst' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>rightPad</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#PadRequest'>PadRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("rightPad")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_rightPad' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_rightPad' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>sort</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#StringItemList'>StringItemList</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#StringItemList'>StringItemList</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("sort")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_sort' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_sort' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>split</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SplitRequest'>SplitRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#SplitResult'>SplitResult</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("split")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_split' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_split' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>splitByLength</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SplitByLengthRequest'>SplitByLengthRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#SplitResult'>SplitResult</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("splitByLength")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_splitByLength' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_splitByLength' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>startsWith</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#StartsWithRequest'>StartsWithRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'><br>	 checks if the passed string starts with a given prefix<br>	</span>
                    <button
                        onclick='openDetails("startsWith")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_startsWith' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_startsWith' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'><br>	 checks if the passed string starts with a given prefix<br>	</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>substring</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#SubStringRequest'>SubStringRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("substring")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_substring' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_substring' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>toLowerCase</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("toLowerCase")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_toLowerCase' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_toLowerCase' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>toUpperCase</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("toUpperCase")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_toUpperCase' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_toUpperCase' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>trim</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("trim")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_trim' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_trim' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>urlDecode</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#UrlDecodeRequest'>UrlDecodeRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("urlDecode")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_urlDecode' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_urlDecode' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>urlEncode</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#UrlEncodeRequest'>UrlEncodeRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("urlEncode")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_urlEncode' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_urlEncode' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>valueToPrettyString</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#undefined'>undefined</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#string'>string</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'></span>
                    <button
                        onclick='openDetails("valueToPrettyString")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_valueToPrettyString' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_valueToPrettyString' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'></td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='ContainsRequest' colspan='2' class='content-td'>ContainsRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;ContainsRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;substring
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
                <th id='EndsWithRequest' colspan='2' class='content-td'>EndsWithRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;EndsWithRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;suffix
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
                <th id='FormatRequest' colspan='2' class='content-td'>FormatRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;FormatRequest<b>:</b>&nbsp;
                    
    
    <b>string
</b>




    |
         


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;data
[1,1]
:&nbsp;


<b>void
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;format
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;locale
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
                <th id='IndexOfRequest' colspan='2' class='content-td'>IndexOfRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;IndexOfRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;word
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
                <th id='IndexOfResponse' colspan='2' class='content-td'>IndexOfResponse</th>
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
                <td class='content-td'><b>type</b>&nbsp;IndexOfResponse<b>:</b>&nbsp;
                


<b>int
</b>







                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='JoinRequest' colspan='2' class='content-td'>JoinRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;JoinRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;piece
[0,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;delimiter
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
                <th id='MatchRequest' colspan='2' class='content-td'>MatchRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;MatchRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;regex
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
                <th id='MatchResult' colspan='2' class='content-td'>MatchResult</th>
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
                <td class='content-td'><b>type</b>&nbsp;MatchResult<b>:</b>&nbsp;
                


<b>int
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;group
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
                <th id='PadRequest' colspan='2' class='content-td'>PadRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;PadRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;length
[1,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;char
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
                <th id='ReplaceRequest' colspan='2' class='content-td'>ReplaceRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;ReplaceRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;regex
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;replacement
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
                <th id='SplitByLengthRequest' colspan='2' class='content-td'>SplitByLengthRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SplitByLengthRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;length
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
                <th id='SplitRequest' colspan='2' class='content-td'>SplitRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SplitRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;regex
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;limit
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
                <th id='SplitResult' colspan='2' class='content-td'>SplitResult</th>
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
                <td class='content-td'><b>type</b>&nbsp;SplitResult<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;result
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
                <th id='StartsWithRequest' colspan='2' class='content-td'>StartsWithRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;StartsWithRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;prefix
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
                <th id='StringItemList' colspan='2' class='content-td'>StringItemList</th>
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
                <td class='content-td'><b>type</b>&nbsp;StringItemList<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;item
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
                <th id='SubStringRequest' colspan='2' class='content-td'>SubStringRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;SubStringRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;end
[0,1]
:&nbsp;


<b>int
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;begin
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
                <th id='UrlDecodeRequest' colspan='2' class='content-td'>UrlDecodeRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;UrlDecodeRequest<b>:</b>&nbsp;
                
<a href='#UrlEncodeRequest'>UrlEncodeRequest</a>









                </td>
                <td></td>
            </tr>
        </table>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='UrlEncodeRequest' colspan='2' class='content-td'>UrlEncodeRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;UrlEncodeRequest<b>:</b>&nbsp;
                


<b>string
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;charset
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

</body>

</html>

