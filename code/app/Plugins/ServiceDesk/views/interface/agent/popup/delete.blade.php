<div class="modal fade" id="delete{{$deleteid}}">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Excluir </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <p>Dados serão excluídos, tem certeza?</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="close" class="btn btn-default pull-left" data-dismiss="modal">Fechar</button>
                <a href="{{$deleteurl}}" class="btn btn-danger">Excluir</a>
            </div>
        </div>
    </div>
</div>