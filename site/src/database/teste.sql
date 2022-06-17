select u.nomeUsuario, e.nomeEstilo 
    from usuario u
        join estilos e
            on u.fkEstilo = e.idEstilo;
