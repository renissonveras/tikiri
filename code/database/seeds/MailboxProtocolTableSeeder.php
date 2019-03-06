<?php

use Illuminate\Database\Seeder;

class MailboxProtocolTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('mailbox_protocol')->delete();
        
        \DB::table('mailbox_protocol')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'IMAP',
                'value' => '/imap',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'IMAP+SSL',
                'value' => '/imap/ssl',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'IMAP+TLS',
                'value' => '/imap/tls',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'IMAP+SSL/No-validate',
                'value' => '/imap/ssl/novalidate-cert',
            ),
        ));
        
        
    }
}
