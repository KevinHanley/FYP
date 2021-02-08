<%--
  Created by IntelliJ IDEA.
  User: kevinhanley
  Date: 21/01/2021
  Time: 2:14 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Password</title>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- style sheets -->
    <link rel="stylesheet" href="styles/password.css" type="text/css"/>

    <!--
    ***************************************
    Displaying image from servlet: https://mail.codejava.net/coding/how-to-display-images-from-database-in-jsp-page-with-java-servlet
    Clickable grid code: https://stackoverflow.com/questions/6010615/clickable-grid-over-image-in-javascript-and-jquery
    If HasClass: https://stackoverflow.com/questions/4565075/jquery-if-element-has-class-do-this
    Array 'pop': https://stackoverflow.com/questions/19544452/remove-last-item-from-array
    Add array to hidden field: https://stackoverflow.com/questions/40225171/add-array-values-to-hidden-form-field
    Array.join: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join
    Table Padding Issues: https://stackoverflow.com/questions/16427903/remove-all-padding-and-margin-table-html-and-css
    ***************************************
    -->

    <script type="text/javascript">
        $(document).ready(function(){

            $('#submitbutton').prop("disabled", true)

            var $src = $('#grid-source');
            var $wrap = $('<div id="grid-overlay"></div>');
            //var $gsize = 30; //size of each cell in pixels


            //Custom 8x8 grid code
            var $mycols = 16;
            var $myrows = 16;
            var $cellwidth = Math.ceil($src.find('img').innerWidth() / $mycols);
            var $cellheight = Math.ceil($src.find('img').innerHeight() / $myrows);

            //number of columns and rows
            //var $cols = Math.ceil($src.find('img').innerWidth() / $gsize);
            //var $rows = Math.ceil($src.find('img').innerHeight() / $gsize);

            //array to hold selected cell values
            var cellarray = [];

            // create table to overlay the image
            var $tbl = $('<table border="0" cellspacing="0" cellpadding="0"></table>');
            $tbl.addClass('.table-changes');
            for (var y = 1; y <= $myrows; y++) {

                //y is the row number!

                var $tr = $('<tr></tr>');
                for (var x = 1; x <= $mycols; x++) {

                    //x is the column number!

                    var $td = $('<td></td>');
                    $td.css('width', $cellwidth).css('height', $cellheight);
                    //$td.css('width', $gsize+'px').css('height', $gsize+'px');
                    $td.addClass('unselected');
                    $td.attr('data-id', y + '-' + x); //assign a unique id to each cell using co-ordinates
                    $tr.append($td);
                }
                $tbl.append($tr); //add row to table
            }

            $src.css('width', $mycols*$cellwidth).css('height', $myrows*$cellheight); //Custom table dimensions for 8x8 grid
            //$src.css('width', $cols*$gsize+'px').css('height', $rows*$gsize+'px');
            //$src.css('width', $mycols*$gsize+'px').css('height', $myrows*$gsize+'px')

            // attach overlay
            $wrap.append($tbl);
            $src.after($wrap);

            //update cell colour when hovered over
            $('#grid-overlay td').hover(function() {
                $(this).toggleClass('hover');
            });

            //make changes when cell is clicked
            $('#grid-overlay td').click(function() {

                //change the class
                $(this).toggleClass('selected').toggleClass('unselected');

                //update the array containing the selected tiles
                if ($(this).hasClass('selected')) {
                    //add the cell to the array
                    cellarray.push($(this).data('id'));

                } else {
                    //remove last item from the array
                    cellarray.pop();
                }

                //setting the button disable/enabled.
                if (cellarray.length < 8) {
                    $('#submitbutton').prop("disabled", true)
                } else {
                    $('#submitbutton').prop("disabled", false)
                }

                //update the hidden variable in the form.
                $('input[name=tilearray1]').val(cellarray.join());
            });
        });
    </script>
</head>
<body>

    <h2>Select tiles to use as your password: ${IMAGEPASS.getImageName()}</h2>

    <form action="ImageServlet" method="POST">
        <input type="hidden" name="tilearray1">
        <input type="hidden" name="imageaction" value="firstpassword">
        <div id="grid-source">
            <img src="data:image/jpg;base64,${IMAGEPASS.getBase64Image()}" width="600" height="600"/>
        </div>
        <button id="submitbutton" type="submit">Submit This Password?</button>
    </form>

</body>
</html>
