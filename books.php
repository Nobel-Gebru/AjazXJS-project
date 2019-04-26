  <!DOCTYPE html>
  <html>
  <head>
    <title>Book List</title>
    <link rel="stylesheet" type="text/css" href="books.css">

  </head>

  <body>
    <h3>Bookster</h3>
    <p>Please select a category from below!
    <div class="formpost">

      <form method="get" id="categorize">
            <?php
            $conn = new mysqli("localhost", "root", "521347", "books");

              $sql = "SELECT DISTINCT c.categoryName from Category c";
              $categories = mysqli_query($conn, $sql);
              if(mysqli_num_rows($categories) > 0){
                while($row = mysqli_fetch_assoc($categories)){
                  echo "<input type='radio' class='category' name='Category' value=".$row['categoryName']." />" ;
                  echo $row['categoryName'];
                  }
                }else {
                  echo "There are no categories!";
                }
              ?>
            </div>
            <button type="submit" name="submit" value="Categorize Books" >Categorize Books</button>
      </form>

      <div id="book-data">
      <table>
        <tr class="book-details">
          <td id='book-title'>Title</td>
          <td id='book-author'>First Name</td>
          <td class='book-author'>Last Name</td>
          <td id='book-Year'>Year</td>
          <td id='book-categoryID'>Category ID</td>
          <td id='book-categoryName'>CategoryName</td>
          <td id='book-price'>Price</td>
        </tr>
        <?php
            include 'booklist.php';
          ?>
      </table>
    </div>

    <div id="format">
    </div>

  </body>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="books.js" type="text/javascript"></script>
  </html>
