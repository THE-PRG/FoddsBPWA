<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        if(isset($_GET['rwid']))
        {
            $prq = $bdd->prepare("SELECT type, DATE(date) AS 'date', TIME(date) AS 'time' FROM `race_event` WHERE raceW_id = :Qrwid ORDER BY date ASC");
            $prq->bindParam(':Qrwid', $_GET['rwid'], PDO::PARAM_INT);
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