#!/bin/bash

if [ $1 ]; then

echo 'QUERY1.1-STARTING'

echo "------------------------------------------------------------QUERY-1.1-------------------------------------------------------" > /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.extendedprice*lo.discount) as revenue from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey where lo.year = 1993 and lo.discount between 1 and 3 and lo.quantity < 25;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY1.1-DONE'

echo 'QUERY1.2-STARTING'

echo "------------------------------------------------------------QUERY-1.2-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.extendedprice*lo.discount) as revenue from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey where d.yearmonthnum = 199401 and lo.discount between 4 and 6 and lo.quantity between 26 and 35;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY1.2-DONE'

echo 'QUERY1.3-STARTING'

echo "------------------------------------------------------------QUERY-1.3-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.extendedprice*lo.discount) as revenue from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey where d.weeknuminyear = 6 and lo.year = 1994 and lo.discount between 5 and 7 and lo.quantity between 26 and 35;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY1.3-DONE'

echo 'QUERY2.1-STARTING'

echo "------------------------------------------------------------QUERY-2.1-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.revenue), d.year, p.brand1 from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join part p on lo.partkey = p.partkey join supplier_b s on lo.suppkey = s.suppkey where p.category = 'MFGR#12' and lo.region = 'AMERICA' group by d.year, p.brand1 order by d.year, p.brand1;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY2.1-DONE'

echo 'QUERY2.2-STARTING'

echo "------------------------------------------------------------QUERY-2.2-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt


 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.revenue), d.year, p.brand1 from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join part p on lo.partkey = p.partkey join supplier_b s on lo.suppkey = s.suppkey where p.brand1 between 'MFGR#2221' and 'MFGR#2228' and lo.region = 'ASIA' group by d.year, p.brand1 order by d.year, p.brand1;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt



	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY2.2-DONE'

echo 'QUERY2.3-STARTING'

echo "------------------------------------------------------------QUERY-2.3-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select sum(lo.revenue), d.year, p.brand1 from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join part p on lo.partkey = p.partkey join supplier_b s on lo.suppkey = s.suppkey where p.brand1 = 'MFGR#2221' and lo.region = 'EUROPE' group by d.year, p.brand1 order by d.year, p.brand1;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY2.3-DONE'

echo 'QUERY3.1-STARTING'

echo "------------------------------------------------------------QUERY-3.1-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select c.nation, s.nation, d.year, sum(lo.revenue) as revenue from lineorder_mpart2_b2 lo join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join date_dim d on lo.orderdate = d.datekey where c.region = 'ASIA' and lo.region = 'ASIA' and lo.year >= 1992 and lo.year <= 1997 group by c.nation, s.nation, d.year order by d.year asc, revenue desc;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY3.1-DONE'

echo 'QUERY3.2-STARTING'

echo "------------------------------------------------------------QUERY-3.2-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select c.city, s.city, d.year, sum(lo.revenue) as revenue from lineorder_mpart2_b2 lo join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join date_dim d on lo.orderdate = d.datekey where c.nation = 'UNITED STATES' and s.nation = 'UNITED STATES' and lo.year >= 1992 and lo.year <= 1997 group by c.city, s.city, d.year order by d.year asc, revenue desc;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY3.2-DONE'

echo 'QUERY3.3-STARTING'

echo "------------------------------------------------------------QUERY-3.3-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select c.city, s.city, d.year, sum(lo.revenue) as revenue from lineorder_mpart2_b2 lo join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join date_dim d on lo.orderdate = d.datekey where (c.city='UNITED KI1' or c.city='UNITED KI5') and (s.city='UNITED KI1' or s.city='UNITED KI5') and lo.year >= 1992 and lo.year <= 1997 group by c.city, s.city, d.year order by d.year asc, revenue desc;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY3.3-DONE'

echo 'QUERY3.4-STARTING'

echo "------------------------------------------------------------QUERY-3.4-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select c.city, s.city, d.year, sum(lo.revenue) as revenue from lineorder_mpart2_b2 lo join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join date_dim d on lo.orderdate = d.datekey where (c.city='UNITED KI1' or c.city='UNITED KI5') and (s.city='UNITED KI1' or s.city='UNITED KI5') and d.yearmonth = 'Dec1997' group by c.city, s.city, d.year order by d.year asc, revenue desc;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY3.4-DONE'

echo 'QUERY4.1-STARTING'

echo "------------------------------------------------------------QUERY-4.1-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select d.year, c.nation, sum(lo.revenue - lo.supplycost) as profit from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join part p on lo.partkey = p.partkey where c.region = 'AMERICA' and lo.region = 'AMERICA' and (p.mfgr = 'MFGR#1' or p.mfgr = 'MFGR#2') group by d.year, c.nation order by d.year, c.nation;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY4.1-DONE'

echo 'QUERY4.2-STARTING'

echo "------------------------------------------------------------QUERY-4.2-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select d.year, s.nation, p.category, sum(lo.revenue - lo.supplycost) as profit from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join part p on lo.partkey = p.partkey where c.region = 'AMERICA' and lo.region = 'AMERICA' and (lo.year = 1997 or lo.year = 1998) and (p.mfgr = 'MFGR#1' or p.mfgr = 'MFGR#2') group by d.year, s.nation, p.category order by d.year, s.nation, p.category;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY4.2-DONE'

echo 'QUERY4.3-STARTING'

echo "------------------------------------------------------------QUERY-4.3-------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

for i in 1 2 3 4

do 

        echo "-------------------------------------------------------------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "--------------------------------------------RUN-"$i"---------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

 	{ time facebookpresto --server node5.dsi.uminho.pt:8321 --catalog hive --schema $1 --execute "set session distributed_join=false; select d.year, s.city, p.brand1, sum(lo.revenue - lo.supplycost) as profit from lineorder_mpart2_b2 lo join date_dim d on lo.orderdate = d.datekey join customer c on lo.custkey = c.custkey join supplier_b s on lo.suppkey = s.suppkey join part p on lo.partkey = p.partkey where c.region = 'AMERICA' and s.nation = 'UNITED STATES' and (lo.year = 1997 or lo.year = 1998) and p.category = 'MFGR#14' group by d.year, s.city, p.brand1 order by d.year, s.city, p.brand1;"; } >> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt 2>> /home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

	echo "-------------------------------------------FIM-RUN-"$i"------------------------------------------------------------">>/home/admin/eduarda/testes/results_presto_BJ_mpart2_b2_$1.txt

done

echo 'QUERY4.3-DONE'

else

echo 'Missing database name!!!'

fi
