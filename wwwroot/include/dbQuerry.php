<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header('Content-type: application/json');

        if(isset($_POST['querry']))
        {
            $prq = $bdd->prepare($_POST['querry']);
            $prq->execute() or die(print_r($prq->errorInfo(), true));

            $qr = array();

            while ($row = $prq->fetch(PDO::FETCH_ASSOC)) 
            {
                $qr[] = $row;
            }

            echo json_encode($qr);
        }

	} catch (PDOException $e) {
		echo "<p>Erreur : " . $e->getMessage() . "</p>";
		exit();
    }
?>