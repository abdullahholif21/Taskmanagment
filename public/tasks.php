
<?php  include_once("../conf/conf.php")    ?>
<?php 


?>

<h1>Tasks List</h1>
<table class="table table-striped">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Desciption</th>
        <th>status</th>
        <th>userid</th>
        <th>created att</th>
        <th>Due date</th>
    </tr>
    <?php 
$sql="SELECT * FROM tasks";
$result = $con->query($sql);
if ($result->num_rows>0){
    while($row=$result->fetch_assoc()){
    

?>

    <tr>
        <td><?php echo $row["id"] ?></td>
        <td><?php echo $row["title"] ?></td>
        <td><?php echo $row["Desciption"] ?> </td>
        <td><?php echo $row["status"] ?></td>
        <td><?php echo $row["userid"] ?> </td>
        <td><?php echo $row["created_att"] ?> </td>
        <td><?php echo $row["Due_date"] ?> </td>
    </tr>
<?php
    }
}
?>

</table>
