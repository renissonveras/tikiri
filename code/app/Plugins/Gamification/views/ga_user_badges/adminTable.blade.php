{!! Datatable::table()
->addColumn(Lang::get('lang.name'),
				Lang::get('lang.status'),
				Lang::get('lang.last_login'),
				Lang::get('lang.role'),
				Lang::get('gamification::lang.xp'),
				Lang::get('gamification::lang.credits'),
				Lang::get('gamification::lang.total'))
->setUrl(route('gamification.users.get'))  // this is the route where data will be retrieved
->render() !!}