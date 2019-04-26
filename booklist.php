<?php
// getting data from database
  // getting data from database
  $conn = new mysqli("localhost", "root", "521347", "books");

  $result = mysqli_query($conn, "SELECT DISTINCT book.title, a.F_Name, a.L_Name, y.bookYear, book.categoryID, c.CategoryName, p.price
          FROM Titles book, Years y,Author a,Prices p,Category c
          WHERE book.categoryID = c.categoryID
          AND a.bookID = book.bookID
          AND y.bookID = book.bookID
          AND p.bookID = book.bookID");

  $data = array();
  // grab category selection
  if(isset($_REQUEST["Category"])){
    $searchCat = $_REQUEST['Category'];
    $sql =  "SELECT DISTINCT book.title, a.F_Name, a.L_Name, y.bookYear, book.categoryID, c.CategoryName, p.price
            FROM Titles book, Years y,Author a,Prices p,Category c
            WHERE book.categoryID = c.categoryID
            AND a.bookID = book.bookID
            AND y.bookID = book.bookID
            AND p.bookID = book.bookID
            AND c.categoryName = \"$searchCat\"";

      $result = mysqli_query($conn, $sql);
    }

    // grab all books
    elseif($_REQUEST["Category"] == "All"){
      $sql =  "SELECT DISTINCT book.title, a.F_Name, a.L_Name, y.bookYear, book.categoryID, c.CategoryName, p.price
              FROM Titles book, Years y,Author a,Prices p,Category c
              WHERE book.categoryID = c.categoryID
              AND a.bookID = book.bookID
              AND y.bookID = book.bookID
              AND p.bookID = book.bookID";

        $result = mysqli_query($conn, $sql);
      }

      // display results
        while($row = mysqli_fetch_assoc($result)){
          //add values to array

          $data = $row;
          echo "<tr class='book-details'>";
          echo "<td id='book-title'>".$row['title']."</td>";
          echo "<td id='book-author'>".$row['F_Name']."</td>";
          echo "<td id='book-author'>".$row['L_Name']."</td>";
          echo "<td id='book-year'>".$row['bookYear']."</td>";
          echo "<td id='book-cat-id'>".$row['categoryID']."</td>";
          echo "<td id='book-cat'>".$row['CategoryName']."</td>";
          echo "<td id='book-price'>".$row['price']."</td>";
          echo "</tr>";

          //check format and print to console
          if($_REQUEST["format"] == "json"){
            echo "<script>console.log(".JSON_encode($data).");
            var node = document.createTextNode(JSON.stringify(".JSON_encode($data)."));
                  document.getElementById('format').appendChild(node); </script>";
          }else{
            $xml = new SimpleXMLElement('<root/>');
            array_walk_recursive($data, array ($xml, 'addChild'));
            echo (string)$xml->asXML();
          }
        }
?>
