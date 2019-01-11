select clave, nombre from concurso where tipoconcurso = 'Catadores';
accept v_concurso prompt 'ingrese el clave del concurso :';
select clave, fechai as FechaInicial, fechaf as FechaFinal from calendario where clave_concurso = &v_concurso;
accept v_calendario prompt 'ingrese el clave del calendario :';
select c.clave,c.primer_nombre from catador_experto c, jueces J where j.clave_calendario = &v_calendario and j.clave_catador_experto = c.clave;
accept v_juez prompt 'ingrese el id del juez :';
select clave, nombre from bodega;
accept v_bodega prompt 'inserte la clave de la bodega :';
select clave,nombre from marca where clave_bodega = &v_bodega;
accept v_marca prompt 'ingrese la clave de la marca :';
accept v_anada date prompt 'ingrese la anada :';
accept v_sumatoriaexperto prompt 'ingrese la sumatoria del experto :';
exec pr_insertar_muestra_catador('&v_anada',&v_sumatoriaexperto,&v_marca,&v_juez); 