var myApp = angular.module('myApp', []);

myApp.controller('MainController', ['$http', '$scope',
    function($http, $scope) {
        //        $http.get('url').success(function(data) {
        //
        //        });

        //titile and content for page 3
        $scope.Databasetitle = 'Tipo de Database';
        $scope.Databasecontent = 'Selecione o tipo do database';

        $scope.Hosttitle = 'Database Host';
        $scope.Hostcontent = 'Você deve conseguir essa informação do seu host, se localhost não funcionar';

        $scope.Porttitle = 'Porta Database';
        $scope.Portcontent = 'Este é opcional, insira este campo somente se o seu banco de dados não estiver sendo executado na porta padrão';

        $scope.Databasenametitle = 'Nome do Database';
        $scope.Databasenamecontent = 'O nome do banco de dados em que deseja executar o Tikiri';

        $scope.Usertitle = 'Usuário do Database';
        $scope.Usercontent = 'Seu nome de usuário do banco de dados';

        $scope.Passwordtitle = 'Senha do Database';
        $scope.Passwordcontent = 'Sua senha de usuário do banco de dados';
        
        //titile and content for page 4

        $scope.Nametitle = 'Primeiro Nome';
        $scope.Namecontent = 'Primeiro nome do administrador do sistema';
        
        $scope.Lasttitle = 'Sobrenome';
        $scope.Lastcontent = 'Último nome do administrador do sistema';
        
        $scope.Emailtitle = 'Email';
        $scope.Emailcontent = 'E-mail verifique o seu endereço de e-mail antes de continuar';
        
        $scope.UserNametitle = 'Usuário';
        $scope.UserNamecontent = 'Os nomes de usuário podem ter apenas caracteres alfanuméricos, espaços, sublinhados, hifões, períodos e o símbolo @.';
        
        $scope.Passtitle = 'Senha';
        $scope.Passcontent = 'Importante: você precisará desta senha para fazer login. Por favor, guarde-o em local seguro.';
        
        $scope.Confirmtitle = 'Confirmar Senha';
        $scope.Confirmcontent = 'Digite a mesma senha inserida acima';
        
        $scope.Languagetitle = 'Linguagem';
        $scope.Languagecontent = 'O idioma que deseja executar o Tikiri';
        
        $scope.Timezonetitle = 'Time Zone';
        $scope.Timezonecontent = 'Time Zone padrão do Tikiri';

        $scope.Datetimetitle = 'Formato de Data & Hora';
        $scope.Datetimecontent = 'Qual o formato que você deseja exibir data e hora no Tikiri';

        $scope.DummyDataTitle = 'Dados de Exemplo';
        $scope.DummyDataContent = 'Marque este chekbox instalar o banco de dados com dados de exemplo.';
                
    }
]);
