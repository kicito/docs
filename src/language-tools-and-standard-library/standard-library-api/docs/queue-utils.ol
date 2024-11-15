


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
    <h1 class="service-name">QueueUtils</h1>
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
                <a href='#QueueUtilsInterface'>QueueUtilsInterface<a>&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr>
        <table class='interface-definition'>
            <tr>
                <th id='QueueUtilsInterface' class='resource-label-interface resource-label'>intf</th>
                <th id='QueueUtilsInterface' colspan='3' class='content-td'>QueueUtilsInterface</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>delete_queue</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Removes an existing queue</span>
                    <button
                        onclick='openDetails("delete_queue")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_delete_queue' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_delete_queue' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Removes an existing queue</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>new_queue</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Creates a new queue with queue_name as key</span>
                    <button
                        onclick='openDetails("new_queue")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_new_queue' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_new_queue' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Creates a new queue with queue_name as key</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>peek</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#undefined'>undefined</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Retrieves, but does not remove, the head of the queue</span>
                    <button
                        onclick='openDetails("peek")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_peek' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_peek' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Retrieves, but does not remove, the head of the queue</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>poll</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#undefined'>undefined</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Removes and returns the head of the queue</span>
                    <button
                        onclick='openDetails("poll")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_poll' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_poll' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Removes and returns the head of the queue</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>push</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#QueueRequest'>QueueRequest</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#bool'>bool</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Pushes an element at the end of an existing queue</span>
                    <button
                        onclick='openDetails("push")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_push' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_push' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Pushes an element at the end of an existing queue</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td  class='resource-label rr-type'>rr

                </td>
                <td class='content-td operation-name'><span>size</span></td>
                <td class='content-td'>
                    <span class='message-type'>Request:</span>
                    <a href='#string'>string</a>

                    
                    <span class='message-type'>Response:</span>
                    <a href='#int'>int</a>
                </td>
                <td class='content-td'>
                    <span class='documentation documentation-inline-block'>Returns the size of an existing queue, null otherwise</span>
                    <button
                        onclick='openDetails("size")' class='operation-button'>Details</button>
                </td>
            </tr>
            <tr id='faults_size' style='display:none'>
                <td>
                </td>
                <td></td>
                <td></td>
                <td class='content-td'><span class='message-type'>Faults:</span>
                </td>
            </tr>
            <tr id='doc_size' style='display:none'>
                <td></td>
                <td colspan='3' class='documentation'>Returns the size of an existing queue, null otherwise</td>
            <tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
        <hr>
        <table class='type-definition'>
            <tr>
                <th class='resource-label-type resource-label'>type</th>
                <th id='QueueRequest' colspan='2' class='content-td'>QueueRequest</th>
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
                <td class='content-td'><b>type</b>&nbsp;QueueRequest<b>:</b>&nbsp;
                


<b>void
</b>
    &#123; </td><td class='documentation'></td></tr>
        <tr><td></td><td class='content-td'>&nbsp;&nbsp;queue_name
[1,1]
:&nbsp;


<b>string
</b>







    </td><td class='documentation'></td></tr>

        <tr><td></td><td class='content-td'>&nbsp;&nbsp;element
[1,1]
:&nbsp;








undefined


    </td><td class='documentation'></td></tr>

    <tr><td></td><td class='content-td'>&#125;







                </td>
                <td></td>
            </tr>
        </table>

</body>

</html>

