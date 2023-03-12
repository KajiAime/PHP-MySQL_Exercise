<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbname = "skye8interns";
    $conn = new mysqli($server, $username, $password, $dbname);
    if($conn->connect_error){
        die("Could not connect: ".$conn->connect_error);
    }
    echo "<script>alert(\"Successfully connected to database.\");</script>";
    

    $query1 = "SELECT * FROM `users` WHERE role = 'Admin'";
    $query2 = "SELECT * FROM `users` WHERE role = 'Intern'";
    $query3 = "SELECT * FROM `task` WHERE user_id = 4"; //This ID 3 happens to be an admin.
    $query4 = "SELECT * FROM `task`, `users` WHERE user_id = 4 && users.id = 4"; //ID 3 is an admin.
    $query5 = "SELECT * FROM `logbooks`INNER JOIN `users` ON user_id = users.id";
    $query6 = "SELECT SUM(score) FROM `task`";
    $query7 = "SELECT MAX(score) FROM `task`";
    $query8 = "SELECT MIN(score) FROM `task`";
    
    $result = $conn->query($query1);
    if($result->num_rows > 0){
        echo "<table>";
        echo "<th><td>ID</td> <td>Name</td> <td>Email</td> <td>Phone</td> <td>Role</td></th><br/>";
        while($row = $result->fetch_assoc()){
            echo "<tr> <td>".$row["id"]."</td> <td>".$row["name"]."</td> <td>".$row["email"]."</td> <td>".$row["role"]."</td> </tr><br/>";
        }
        echo "<br/>";
    }else{
        echo "0 results found!  <br/><br/>";
    }
    
    $result0 = $conn->query($query2);
    if($result0->num_rows > 0){
        echo "<th><td>ID</td> <td>Name</td> <td>Email</td> <td>Phone</td> <td>Role</td></th><br/>";
        while($row = $result0->fetch_assoc()){
            echo "<tr> <td>".$row["id"]."</td> <td>".$row["name"]."</td> <td>".$row["email"]."</td> <td>".$row["role"]."</td> </tr><br/>";
        }
        echo "<br/>";
    }else{
        echo "0 results found!  <br/><br/>";
    }
    
    $result1 = $conn->query($query3);
    if($result1->num_rows > 0){
        echo "<th><td>ID</td> <td>userId</td> <td>dateCreated</td> <td>Title</td> <td>Content</td></th> <td>Score</td><br/>";
        while($row = $result1->fetch_assoc()){
            echo "<tr> <td>".$row["id"]."</td> <td>".$row["user_id"]."</td> <td>".$row["date_created"]."</td> <td>".$row["title"]."</td> <td>".$row["content"]."</td> <td>".$row["score"]."</td> </tr><br/>";
        }
        echo "<br/>";
    }else{
        echo "0 results found!  <br/><br/>";
    }
    
    $result2 = $conn->query($query4);
    if($result2->num_rows > 0){
        echo "<th><td>ID</td> <td>Name</td> <td>Email</td> <td>Phone</td> <td>Role</td> <td>ID</td> <td>userId</td> <td>dateCreated</td> <td>Title</td> <td>Content</td></th> <td>Score</td></th><br/>";
        while($row = $result2->fetch_assoc()){
            echo "<tr> <td>".$row["id"]."</td> <td>".$row["name"]."</td> <td>".$row["email"]."</td> <td>".$row["role"]."</td> <td>".$row["id"]."</td> <td>".$row["user_id"]."</td> <td>".$row["date_created"]."</td> <td>".$row["title"]."</td> <td>".$row["content"]."</td> <td>".$row["score"]."</td>  </tr><br/>";
        }
        echo "<br/>";
    }else{
        echo "0 results found!  <br/><br/>";
    }
    
    $result3 = $conn->query($query5);
    if($result3->num_rows > 0){
        echo "<th><td>ID</td> <td>Name</td> <td>Email</td> <td>Phone</td> <td>Title</td> <td>Description</td> <td>Date</td></th><br/>";
        while($row = $result3->fetch_assoc()){
            echo "<tr> <td>".$row["id"]."</td> <td>".$row["name"]."</td> <td>".$row["email"]."</td> <td>".$row["role"]."</td> <td>".$row["title"]."</td> <td>".$row["description"]."</td> <td>".$row["date"]."</td> </tr><br/>";
        }
        echo "<br/>";
    }else{
        echo "0 results found! <br/><br/>";
    }

    $conn->close();
    ?>
</body>
</html>