SELECT COUNT(e.empno) AS anz, MIN(e.sal) AS min_sal, MAX(e.sal) AS max_sal, ROUND(AVG(e.sal)) AS avg_sal, COUNT(DISTINCT(e.job)) AS anz_jobs
FROM emp e
WHERE EXISTS (SELECT * FROM emp u WHERE u.mgr = e.empno)