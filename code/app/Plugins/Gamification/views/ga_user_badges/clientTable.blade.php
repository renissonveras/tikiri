{!! Datatable::table()
->addColumn( 
Lang::get('gamification::lang.updated_at'),
Lang::get('gamification::lang.type'),
Lang::get('gamification::lang.badge'),
Lang::get('gamification::lang.points'),
Lang::get('gamification::lang.credits'))
->setUrl(route('gamification.user.badges.get'))  // this is the route where data will be retrieved
->render() !!}