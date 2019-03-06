<li class="header">SERVICEDESK</li>
<li class="treeview">
    <a href="#">
        <i class="fa fa-bug"></i> <span>{{Lang::get('service::lang.problems')}}</span> <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="{{url('service-desk/problems')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.all_of')}} {{Lang::get('service::lang.problems')}}</a></li>
        <li class=""><a href="{{url('service-desk/problem/create')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.new_problem')}}</a></li>

    </ul>
</li>
<li class="treeview">
    <a href="#">
        <i class="fa fa-refresh"></i> <span>{{Lang::get('service::lang.changes')}}</span> <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="{{url('service-desk/changes')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.all_ofa')}} {{Lang::get('service::lang.changes')}}</a></li>
        <li class=""><a href="{{url('service-desk/changes/create')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.new_changes')}} </a></li>

    </ul>
</li>
<li class="treeview">
    <a href="#">
        <i class="fa fa-newspaper-o"></i> <span>{{Lang::get('service::lang.releases')}}</span> <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="{{url('service-desk/releases')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.all_of')}} {{Lang::get('service::lang.releases')}}</a></li>
        <li class=""><a href="{{url('service-desk/releases/create')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.new_release')}}</a></li>

    </ul>
</li>
<li class="treeview">
    <a href="#">
        <i class="fa fa-server"></i> <span>{{Lang::get('service::lang.assets')}}</span> <i class="fa fa-angle-left pull-right"></i>
    </a>
    <ul class="treeview-menu">
        <li><a href="{{url('service-desk/assets')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.all_of')}} {{Lang::get('service::lang.assets')}}</a></li>
        <li class=""><a href="{{url('service-desk/assets/create')}}"><i class="fa fa-circle-o"></i>{{Lang::get('service::lang.new_asset')}}</a></li>
        <li><a href="{{url('service-desk/assets/export')}}"><i class="fa fa-circle-o"></i> {{Lang::get('service::lang.export')}} {{Lang::get('service::lang.assets')}}</a></li>
        
    </ul>
</li>


