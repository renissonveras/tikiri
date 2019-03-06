@extends('themes.default1.admin.layout.admin')

@section('content')

<section class="content-header">
    <h1>
        {{Lang::get('service::lang.add_new_location')}}

    </h1>

</section>



<div class="box box-primary">
    <div class="box-header with-border">
        <h4>{{Lang::get('service::lang.add_new_location')}}</h4>
    </div>

    <!-- form start -->

    {!! Form::open(['url'=>'service-desk/location-types/create1','method'=>'post']) !!}
        <div class="box-body">
            <div class="row">
                <div class="col-md-4">
                    <label for="name" class="control-label">{{Lang::get('service::lang.title')}}</label> 
                    <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                        <input type="text" class="form-control" name="title" id="name">
                    </div>
                </div>
                
                

                <div class="col-md-4">
                    <label for="name" class="control-label">{{Lang::get('service::lang.email')}}</label> 
                    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                        <input type="text" class="form-control" name="email" id="name">
                    </div>
                </div>
                <div class="col-md-4 form-group {{ $errors->has('organization') ? 'has-error' : '' }}">
                    {!! Form::label('organization',Lang::get('service::lang.organization')) !!}
                    {!! Form::select('organization',[''=>Lang::get('lang.select'),'Organizações'=>$organizations],null,['class'=>'form-control']) !!}
                </div>
            </div> 

            <div class="row">
                <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6 form-group">
                    <label for="name" class="control-label">{{Lang::get('service::lang.phone')}}</label> 
                    <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
                        <input type="text" class="form-control" name="phone" id="name">
                    </div>
                </div>
                <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6 form-group">
                    <label for="name" class="control-label">{{Lang::get('service::lang.address')}}</label> 
                    <div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
                        <input type="text" class="form-control" name="address" id="name">
                    </div>
                </div>
            </div> 

            <div class="row">
                <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6">
                    <label for="name" class="control-label">{{Lang::get('service::lang.location_category')}}</label> 
                    <div class="form-group  {{ $errors->has('location_category') ? 'has-error' : '' }}">
                        <select class="form-control" name="location_category">
                            <option value="">{{Lang::get('service::lang.select_category')}}</option>
                            @if ($location_category->count())
                            @foreach($location_category as $location_categorys)
                            <option value="{{ $location_categorys->id }}"> {{ $location_categorys->name }}</option>    
                            @endForeach
                            @endif
                        </select>
                    </div>
                </div>

                <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6">
                    <label for="team_lead" class="control-label">{{Lang::get('service::lang.department')}}</label>
                    <div class="form-group  {{ $errors->has('department') ? 'has-error' : '' }}">
                        <select class="form-control" name="department">
                            <option value="">{{Lang::get('service::lang.select_depertment_type')}}</option>
                            @if ($departments->count())
                            @foreach($departments as $department)
                            <option value="{{ $department->id }}"> {{ $department->name }}</option>    
                            @endForeach
                            @endif
                        </select>
                    </div>
                </div>
            </div> 

            <div class="box-footer">
                <button type="submit" class="btn btn-primary">{{Lang::get('service::lang.add_location')}}</button>
            </div>
            

        </div>
    </form>
</div>

@stop