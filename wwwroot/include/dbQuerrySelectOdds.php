<?php
    try
	{
        $bdd = new PDO("mysql:host=localhost;dbname=fodds_main;charset=utf8mb4", "root", "P@ssw0rd");
        $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        
        header("Content-type: application/json");
        header("Access-Control-Allow-Origin: *");

        $prq = $bdd->prepare("SELECT M.driver_id, M.driver_placement, M.active, M.driver_FN, M.driver_LN, M.driver_points, M.AVG_placement, F.Momentum, M.team_id, M.team_name, M.team_placement, M.team_points FROM\n" .
		"(SELECT DISTINCT D.id AS 'driver_id', D.firstN AS 'driver_FN', D.lastN AS 'driver_LN', S.placement AS 'driver_placement', D.active, S.points AS 'driver_points', AVG(R.placement) AS 'AVG_placement',\n" .
		"T.id AS 'team_id', T.name AS 'team_name', C.placement AS 'team_placement', C.points AS 'team_points' FROM driver D\n" .
		"INNER JOIN driver_standings S ON(D.id = S.driver_id) INNER JOIN team T ON(D.team_id = T.id) INNER JOIN constructor_standings C ON(T.id = C.team_id)\n" .
		"INNER JOIN event_result R ON(D.id = R.driver_id) INNER JOIN race_event E ON(R.race_event_id = E.id) INNER JOIN raceW W ON(E.raceW_id = W.id)\n" .
		"WHERE D.active = 1 AND W.season_id = 2020 AND S.season_id = 2020 AND C.season_id = 2020 GROUP BY R.driver_id ORDER BY S.placement ASC) as M,\n" .
		"(SELECT DISTINCT D.id AS 'driver_id', AVG(R.placement) AS 'Momentum' FROM driver D\n" .
		"INNER JOIN driver_standings S ON(D.id = S.driver_id) INNER JOIN team T ON(D.team_id = T.id) INNER JOIN constructor_standings C ON(T.id = C.team_id)\n" .
		"INNER JOIN event_result R ON(D.id = R.driver_id) INNER JOIN race_event E ON(R.race_event_id = E.id) INNER JOIN raceW W ON(E.raceW_id = W.id)\n" .
		"INNER JOIN(SELECT E.id FROM race_event E WHERE E.date < CURRENT_DATE() ORDER BY E.date DESC LIMIT 3) AS Q ON(E.id = Q.id)\n" .
		"WHERE D.active = 1 AND W.season_id = 2020 AND S.season_id = 2020 AND C.season_id = 2020 GROUP BY R.driver_id ORDER BY S.placement ASC) as F WHERE M.driver_id = F.driver_id");
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