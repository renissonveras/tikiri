<?php

use Illuminate\Database\Seeder;

class KbArticleRelationshipTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('kb_article_relationship')->delete();        
        
    }
}
