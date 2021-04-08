<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        $prq = $bdd->prepare("SELECT C.id AS 'circuit_id', C.name AS 'circuit_name', C.location, C.length, C.fastest_lap, C.img_link, W.id AS 'raceW_id', W.name " .
                "AS 'raceW_name', W.nb_lap, W.season_id, E.id AS 'event_id', E.type, E.date FROM raceW W INNER JOIN circuit C ON (W.circuit_id = C.id) INNER JOIN race_event E ON (W.id = E.raceW_id) " .
                "WHERE E.type = 'race' AND E.date < CURRENT_DATE() ORDER BY raceW_name ASC");
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