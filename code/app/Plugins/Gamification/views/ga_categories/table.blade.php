{!! Datatable::table()
->addColumn( 
Lang::get('gamification::lang.title'),
Lang::get('gamification::lang.type'),
Lang::get('gamification::lang.updated_at'),
Lang::get('gamification::lang.action'))
->setUrl(route('gamification.categories.get'))  // this is the route where data will be retrieved
->render() !!}