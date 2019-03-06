{!! Datatable::table()
->addColumn( 
Lang::get('gamification::lang.level'),
Lang::get('gamification::lang.reward'),
Lang::get('gamification::lang.updated_at'),
Lang::get('gamification::lang.action'))
->setUrl(route('gamification.level.associates.get'))  // this is the route where data will be retrieved
->render() !!}