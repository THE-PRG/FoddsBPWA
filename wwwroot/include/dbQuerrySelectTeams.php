<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        $prq = $bdd->prepare("SELECT T.id, T.name, N.name AS 'nationality', E.name AS 'engine_sup',T.director_name, T.img_link FROM `team` T " .
            "INNER JOIN nationality N ON (T.nationality_id = N.id) INNER JOIN engine_sup E ON (T.engine_sup_id = E.id)");
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