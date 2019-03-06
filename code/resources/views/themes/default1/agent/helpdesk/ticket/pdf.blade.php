<h2>
	<center>
		<img src="{{asset('uploads/company')}}{{'/'}}{{'6304.logo_azul561px.png'}}" width="100px;"/>
	</center>
</h2>
<hr>
<h3>Título: {!! $tickets->title !!}</h3><br>
<h3>Número : {!! $tickets->ticket_number !!}</h3><br>
<h3>Departamento : {!! $tickets->department !!}</h3><br>
<h3>Tópico : {!! $tickets->helptopic !!}</h3><br>
@forelse($ticket->thread as $thread)
{!! $thread->body !!}
<hr>
@empty 

@endforelse
