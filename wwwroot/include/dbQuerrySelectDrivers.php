<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        $prq = $bdd->prepare("SELECT D.id, D.lastN, D.firstN, D.age, N.name AS 'nationality', D.img_link from `driver` D INNER JOIN `nationality` N ON (D.nationality_id = N.id)");
        $prq->execute() or die(print_r($prq->errorInfo(), true));
        $qr = array();
        
        while ($row = $prq->fetch(PDO::FETCH_ASSOC)) 
        {
            $qr[] = $row;
        }

        echo json_encode($qr);

	} catch (PDOException $e) {
		echo "<p>Erreur : " . $e->getMessage() . "</p>";
		exit();
    }
?>