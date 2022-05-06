v 1.0
select 
    a.movdate, 
    a.scmaterial, 
    a.quantity, 
    a.unitcost,
    a.quantity * a.unitcost as totalcost
from 
    matmaterialmov a
    inner join scccode
        on(a.scmaterial = b.id)
where 
    a.movdate between to_date('01/01/2018 00:00:00','DD/MM/YYYY hh24:mi:ss') and to_date('08/01/2018 00:00:00','DD/MM/YYYY hh24:mi:ss')
and 
    a. movtype = 14

