Cmp.VelVeiculos = function () {

    /*
    Placa do veículo
    Nome do Funcionário
    Data da Ocorrência
    Velocidade maxima do veículo
    Velocidade registrada na ocorrência
    Diferença entre a velocidade permitida e registrada (%)
    Latitude
    Longitude*/

    let pvt = {

        render: function () {

            Cmp.createInput({
                id: 'inputPlaca',
                renderTo: '.divInputPlaca',
                label: 'Placa do veículo',
                width: '150px'
            });

            Cmp.createInput({
                id: 'inputFunc',
                renderTo: '.divInputPlaca',
                label: 'Nome do funcionário',
                width: '350px'
            });

            Cmp.createInput({
                id: 'inputDataInicial',
                renderTo: '.divInputPlaca',
                label: 'Data início',
                width: '150px'
            });

            Cmp.createInput({
                id: 'inputDataFinal',
                renderTo: '.divInputPlaca',
                label: 'Data final',
                width: '150px'
            });

            Cmp.createButton({
                id: 'btnBuscar',
                renderTo: '#divBtnConsultar',
                text: 'Buscar',
                handler: function () {
                    pvt.buscar();
                }
            });

            Cmp.createGrid({
                id: 'gridDadosVelVeiculo',
                renderTo: '#divCmpGridVelVeiculo',
                header: [
                    {
                        text: 'Placa',
                        field: 'placa',
                        width: 150
                    },
                    {
                        text: 'Funcionário',
                        field: 'nome'
                    },
                    {
                        text: 'Ocorrência',
                        field: 'ocorrencia',
                        width: 150
                    },
                    {
                        text: 'Vel. Max.',
                        field: 'vel_max',
                        width: 100
                    },
                    {
                        text: 'Vel. Max. Reg.',
                        field: 'reg_vel',
                        width: 150
                    },
                    {
                        text: 'Vel. Excedida',
                        field: 'dif_vel',
                        width: 150
                    },
                    {
                        text: 'Latitude',
                        field: 'latitude'
                    },
                    {
                        text: 'Longitude',
                        field: 'longitude'
                    }
                ]
            });
        },

        buscar: function () {
            Cmp.showLoading();

            Cmp.request({
                url: 'index.php?mdl=velMaxVeiculo&file=ds_vel_veiculo.php',

                params: {
                    placa: Cmp.get('inputPlaca').getValue(),
                    nome: Cmp.get('inputFunc').getValue(),
                    datainicial: Cmp.get('inputDataInicial').getValue(),
                    datafinal: Cmp.get('inputDataFinal').getValue()

                },
                success: function (res) {
                    Cmp.hideLoading();
                    if (res.status == 'success') {
                        Cmp.get('gridDadosVelVeiculo').loadData(res.data);
                    } else {
                        console.log(res);
                        Cmp.showErrorMessage(res.message || 'Ocorreu um erro na requisição');
                    }
                }
            });
        }
    };

    this.init = function () {
        pvt.render();
    }
}