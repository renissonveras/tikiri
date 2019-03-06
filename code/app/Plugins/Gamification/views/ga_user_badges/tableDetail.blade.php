{!! Datatable::table()
->addColumn( 
Lang::get('gamification::lang.updated_at'),
Lang::get('gamification::lang.type'),
Lang::get('gamification::lang.badge'),
Lang::get('gamification::lang.points'),
Lang::get('gamification::lang.credits'))
->setUrl(route('gamification.user.details.get',['user_id'=>$user_id]))  // this is the route where data will be retrieved
->render() !!}