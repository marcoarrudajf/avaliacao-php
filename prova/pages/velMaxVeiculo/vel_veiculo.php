<div class="row">
    <div class="col-12">
        <div class="jumbotron">
            <div class="divInputPlaca"></div>
            <div id="divBtnConsultar"></div>
        </div>

        <div id="divCmpGridVelVeiculo"></div>
    </div>
</div>

<style type="text/css">
    .jumbotron {
        padding: 32px;
    }

    .divInputPlaca, #divBtnConsultar {
        align-items: center;
        justify-content: space-evenly;
        display: flex;
        flex-wrap: wrap;
        horiz-align: right;
        gap: 10px;
    }

    #divBtnConsultar {
        margin -top: 32px;
        margin-left: 10px;
    }

    #divBtnConsultar button {
        width: 35%;
    }

    #divCmpGridVelVeiculo {
        display: inline-block;
        width: 100%;
        margin-bottom: 20px;
    }
</style>

<script type="text/javascript">
    Cmp.ready(function () {
        new Cmp.VelVeiculos().init();
    });
</script>