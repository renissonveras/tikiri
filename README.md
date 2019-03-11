Tikiri 
========
<br><img src="https://img.shields.io/badge/License-OSL-blue.svg">&nbsp;</br>

O Tikiri é um sistema Open-Source de gestão de Help Desk e Service Desk que permite que seu negócio estreite o relacionamento com seus clientes, resolvendo dúvidas e questões a respeito do produto e/ou serviço. Organize os chamados de suporte, atendimento online e gestão de serviços de TI em um só sistema.
Em cada recurso, seja de software, treinamento ou material de suporte, buscamos inserir o objetivo principal do produto: aprimorar as relações interpessoais entre cliente-atendentes e atendentes-atendentes para elevar ao máximo o grau de satisfação em ambientes de suporte técnico.

Baseado no Faveo HelpDesk
--------------------------
O Tikiri é um "fork" do projeto <a href="https://github.com/ladybirdweb/faveo-helpdesk" target="_blank">Faveo Helpdesk Community</a>, e seguimos a mesma filosofia de software livre e de código aberto. Mais informações você também pode encontrar no site <a href="https://www.faveohelpdesk.com/" target="_blank">faveohelpdesk.com</a>.

O nome Tikiri
--------------------------
Tikiri, neste caso, faz alusão ao Tiquiri, como é chamado em Roraima e alguns outros estados do Norte do Brasil essa espécie de lagartixa doméstica tropical. O Tiquiri não é venenoso, alimenta-se de insetos, é silencioso e observador. Pode chegar a medir cerca de 17 centímetros, e possui uma capacidade de nadar e escalar muito bem desenvolvida. No nosso caso, escrevemos com “K”, em referência aos Tickets, que é como chamamos as mensagens enviadas ao sistema de gestão de suporte técnico.


Requisitos
--------------------------
To rodar o Tikiri você precisa dos seguintes recursos:

	* PHP Version: 5.6
	* Database: MySQL 5.0+
	* Web Server: Apache / IIS / Nginx
	* PHP Extensions: Imap, Mbstring, Mcrypt, OpenSSL, PDO, Tokenizer, XML, Zip
	* Web Server Extension: Pretty URLs ou Search Engine Friendly URLs precisar estar habilitadas no seu servidor WEB


Créditos
--------------------------
	* Laravel Framework
	* Admin LTE Theme
	* Faveo Helpdesk Community
	* Material-kit

Website
--------------------------
Visite nosso site para mais informações <a href="https://tikiri.com.br" target="_blank">www.tikiri.com.br</a>

Instalar
--------------------------

<p>Siga os passos a seguir para efetuar a instala&ccedil;&atilde;o do sistema:</p>

<p>1. Fa&ccedil;a do download do c&oacute;digo fonte.</p>

<hr />
<p>2. Verifique os requisitos m&iacute;nimos e fa&ccedil;a o upload do c&oacute;digo para o seu servidor web:</p>

<ul>
	<li>Requisitos m&iacute;nimos:
	<ul>
		<li>PHP Vers&atilde;o: 5.6</li>
		<li>Banco de Dados: MySQL 5.0+</li>
		<li>Servidor Web: Apache / IIS / Nginx</li>
		<li>Extens&otilde;es PHP: Imap, Mbstring, Mcrypt, OpenSSL, PDO, Tokenizer, XML, Zip</li>
		<li>Extens&otilde;es do Servidor Web: Mod_rewrite, Pretty URLs ou Search Engine Friendly URLs tem que estar habilitado no servidor web.</li>
	</ul>
	</li>
</ul>

<ul>
	<li>Copie o c&oacute;digo de sistema para o &quot;Document Root&quot; do seu servidor web.</li>
</ul>

<blockquote>
<p>O&nbsp;&quot;Document Root&quot; varia de acordo com o servidor web que voc&ecirc; est&aacute; utilizando (Apache, Nginx, IIS), ou mesmo da distribui&ccedil;&atilde;o linux que voc&ecirc; utiliza. Cada empresa de hospedagem de sites tamb&eacute;m varia a localiza&ccedil;&atilde;o da pasta raiz. Se voc&ecirc; tem d&uacute;vidas quanto a isso pe&ccedil;a ajuda a um especialista ou <a href="https://tikiri.com.br/contato/">solicite nosso suporte t&eacute;cnico</a>.</p>
</blockquote>

<p>&nbsp;</p>

<hr />
<p>3. Descompacte os arquivos no local desejado:</p>

<ul>
	<li>O Tikiri est&aacute; dispon&iacute;vel para download .zip execute o comando abaixo para descompactar:
	<ul>
		<li>unzip tikiri-master.zip</li>
	</ul>
	</li>
	<li>Mova o diretório para o nome que você preferir, no exemplo abaixo vamos instalar o tikiri em um subdiretório chamado suporte:
	<ul>
		<li>mv tikiri-master suporte</li>
	</ul>
	</li>	
</ul>

<hr />
<p>4. Defina nas permiss&otilde;es de diret&oacute;rio:</p>

<p>Os subdiretorios code/storage e code/bootstrap/cache precisam ter permis&atilde;o de escrita pelo seu servidor web. Exemplo de comando para conceder permiss&atilde;o de escrita em servidores Apache:</p>

<ul>
	<li>chgrp -R www-data storage bootstrap/cache</li>
	<li>chmod -R ug+rwx storage bootstrap/cache</li>
</ul>

<hr />
<p>5. Prepare o banco de dados:</p>

<ul>
	<li>No MySQL, crie um banco de dados e um usu&aacute;rio com permiss&atilde;o leitura e&nbsp;escrita de dados e cria&ccedil;&atilde;o de objetos. Anote o nome do banco de dados, usu&aacute;rio, senha, porta do servidor de bd (o padr&atilde;o &eacute; 3306)</li>
	<li>Importe o banco de dados:
		<ul>
			<li>Importe o arquivo&nbsp;tikiri_install.sql que est&aacute; dentro do diret&oacute;rio DB para o seu banco de dados MySQL.</li>
		</ul>
	</li>
	<li>Altere a string de conex&atilde;o:
		<ul>
			<li>V&aacute; para a pasta raiz e procure o arquivo example.env. Renomeie example.env para .env na pasta raiz. Atualize os detalhes da conex&atilde;o do banco de dados que voc&ecirc; criou.</li>
		</ul>
	</li>  
</ul>

<p>Pronto, instala&ccedil;&atilde;o efetuada.</p>

<p>Nome de usu&aacute;rio e Senha padr&atilde;o para acessar o Tikiri ser&aacute;</p>

<p>Nome de usu&aacute;rio: admin<br />
Senha: tikiri</p>
