select a.zafdia, a.tandem, b.zafra, a.peso_neto
from (select zafdia,tandem, pesnet/20 peso_neto
from bs_nota) a, (select max(zafra) zafra from bs_feccal) b