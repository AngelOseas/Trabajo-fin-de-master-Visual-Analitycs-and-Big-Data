select z.ZAFRA, a.zafdia, a.hora, a.valrep BRIX, b.No_Tacho, a.tipo
from (select zafdia, hora,valrep, 'Masa C' tipo 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and tippro like '1'
and codana like '1'
and codmat like '3') a,
(
select zafdia, hora,valrep No_Tacho 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and codana like '53'
and codmat like '3') b, (select max(zafra) zafra from bs_feccal) z
where a.zafdia = b.zafdia
and a.hora = b.hora
UNION ALL
select z.ZAFRA, c.zafdia, c.hora, c.valrep BRIX, d.No_Tacho, c.tipo
from (select zafdia, hora,valrep, 'Masa B' tipo 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and tippro like '1'
and codana like '1'
and codmat like '2') c,
(
select zafdia, hora,valrep No_Tacho 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and codana like '53'
and codmat like '2') d, (select max(zafra) zafra from bs_feccal) z
where c.zafdia = d.zafdia
and c.hora = d.hora
UNION ALL
select  z.ZAFRA, e.zafdia, e.hora, e.valrep BRIX, f.No_Tacho, e.tipo
from (select zafdia, hora,valrep, 'Masa A' tipo 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and tippro like '1'
and codana like '1'
and codmat like '1') e,
(
select zafdia, hora,valrep No_Tacho 
from FB_DETALLE_ANALISIS_X_MATERIAL
where codtma like '2' 
and codana like '53'
and codmat like '1') f, (select max(zafra) zafra from bs_feccal) z
where e.zafdia = f.zafdia
and e.hora = f.hora