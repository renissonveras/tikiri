<div class="box box-primary">
    <div class="box-header">
        <h3 class="box-title">Ativos de TI</h3>
        
    </div>
    <!--/.box-header--> 
    <div class="box-body">
        <table class="table table-condensed">
            <tr>
                <th>#</th>
                <th>Nome</th>
                <th>Utilizado por</th>
                <th>Gerenciado por</th>
            </tr>

            <?php
            $i = 1;
            ?>
            @forelse($product->assets() as $asset)
            <tr>
                <td>{{$i}}</td>
                <td><a href="{{url('service-desk/assets/'.$asset->id.'/show')}}">{{$asset->name}}</a></td>
                <td>{{$asset->used()}}</td>
                <td>{{$asset->managed()}}</td>
            </tr>
            <?php $i++; ?>
            @empty 
            <tr><td>Nenhum ativo de TI associado</td></tr>
            @endforelse

        </table>
    </div>
    <!-- /.box-body -->
</div>
<!-- /.box -->
@include('service::products.popup.addnew-vendor')
@include('service::products.popup.addexisting-vendor')
