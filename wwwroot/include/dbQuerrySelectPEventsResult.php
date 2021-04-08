<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        if(isset($_GET['reid']))
        {
            $prq = $bdd->prepare("SELECT E.placement, D.numb, D.lastN, T.name AS 'team_name', E.time, E.points FROM event_result E " . 
                "INNER JOIN driver D ON (E.driver_id = D.id) INNER JOIN team T ON (D.team_id = T.id) WHERE race_event_id = :Qreid ORDER BY E.placement ASC ");
            $prq->bindParam(':Qreid', $_GET['reid'], PDO::PARAM_INT);
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