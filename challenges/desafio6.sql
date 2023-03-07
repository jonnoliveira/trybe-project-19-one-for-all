SELECT
	MIN(valor_plano) AS faturamento_minimo,
	MAX(valor_plano) AS faturamento_maximo,
  ROUND(AVG(valor_plano), 2) AS faturamento_medio,
  SUM(costs.valor_plano) AS faturamento_total
FROM
	SpotifyClone.costs AS costs
INNER JOIN 
	SpotifyClone.user AS user
ON
	user.id_costs = costs.id_costs;