select usrgrab, dia_zafra zafdia, zafra, tacho, templa, letra_templa, hora_inicio, hora_fin, volumen_templas, observaciones, 
cod_responsable, (hora_fin - hora_inicio)*1440 as Duracion_minutos, hp_agitador
from fb_control_templas
WHERE ZAFRA > '2018-2019'
