<?php

$where = ' where  r.dif_vel > 0';

if (!empty($_REQUEST['placa'])) {
    $where .= " AND r.placa LIKE '%{$_REQUEST['placa']}%'";
}
if (!empty($_REQUEST['nome'])) {
    $where .= " AND r.nome LIKE '%{$_REQUEST['nome']}%'";
}
if (!empty($_REQUEST['datainicial'])) {
    $where .= " AND r.ocorrencia > '{$_REQUEST['datainicial']}'";
}
if (!empty($_REQUEST['datafinal'])) {
    $where .= " AND r.ocorrencia < '{$_REQUEST['datafinal']}'";
}

$db = new Database();

if ($db->connect()) {

    $dados = $db->sqlQueryArray(
        "select * from rastreamento r
        {$where}"
    );

    echo json_encode(array(
        'status' => 'success',
        'data' => $dados
    ));

} else {
    echo json_encode(array(
        'status' => 'failure',
        'message' => 'Erro ao conectar ao banco'
    ));
}
