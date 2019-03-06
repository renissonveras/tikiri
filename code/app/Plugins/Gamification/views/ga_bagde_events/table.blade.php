{!! Datatable::table()
->addColumn( 
Lang::get('gamification::lang.event'),
Lang::get('gamification::lang.badge'),
Lang::get('gamification::lang.updated_at'),
Lang::get('gamification::lang.action'))
->setUrl(route('gamification.badge.events.get'))  // this is the route where data will be retrieved
->render() !!}