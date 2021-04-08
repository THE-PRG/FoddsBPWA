<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        $prq = $bdd->prepare("SELECT S.placement, S.points, T.name FROM `constructor_standings` S INNER JOIN team T ON (S.team_id = T.id) WHERE S.season_id = 2020 ORDER BY S.placement ASC");
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