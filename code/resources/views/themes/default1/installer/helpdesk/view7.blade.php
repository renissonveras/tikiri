@extends('themes.default1.installer.layout.installer')
@section('content')
<style type="text/css">
	h1
	{
		color:#008A00;
	}
	h3
	{
		color: 19D119;
	}

</style>

<h1>O Tikiri já está instalado</h1>
<p>

<h3>Obrigado</h3>
<p>

<br>
<a href="{{url('auth/login')}}" id="access1">&nbsp;&nbsp;&nbsp;&nbsp; Acessar</a>
<br><br><br>
<p>

@stop
