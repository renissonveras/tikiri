<?php

/**
 * Acumulate
 */
if (!Breadcrumbs::exists('gamification.badges.index')) {
    Breadcrumbs::register('gamification.badges.index', function($breadcrumbs) {
        $breadcrumbs->parent('setting');
        $breadcrumbs->push('Critérios', route('gamification.badges.index'));
    });
}
if (!Breadcrumbs::exists('gamification.badges.create')) {
    Breadcrumbs::register('gamification.badges.create', function($breadcrumbs, $type_id) {
        $breadcrumbs->parent('gamification.badges.index');
        $breadcrumbs->push('Criar', route('gamification.badges.create', $type_id));
    });
}
if (!Breadcrumbs::exists('gamification.badges.edit')) {
    Breadcrumbs::register('gamification.badges.edit', function($breadcrumbs, $id) {
        $breadcrumbs->parent('gamification.badges.index');
        $breadcrumbs->push('Editar', route('gamification.badges.edit', $id));
    });
}
if (!Breadcrumbs::exists('gamification.badges.show')) {
    Breadcrumbs::register('gamification.badges.show', function($breadcrumbs, $id) {
        $breadcrumbs->parent('gamification.badges.index');
        $breadcrumbs->push('Mostrar', route('gamification.badges.show', $id));
    });
}
if (!Breadcrumbs::exists('gamification.userbadges.clients')) {
    Breadcrumbs::register('gamification.userbadges.clients', function($breadcrumbs) {
        $breadcrumbs->push('Meus pontos', route('gamification.userbadges.clients'));
    });
}


