{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<script type="text/javascript">
	var there_are = '{l s='There are'}';
	var there_is = '{l s='There is'}';
	var label_errors = '{l s='errors'}';
	var label_error = '{l s='error'}';
</script>
<div id="container">
	<fieldset>
		<div class="row">	
			<div id="error" class="hide col-lg-12 alert alert-danger">
				{if isset($errors)}
					<p>{if $nbErrors > 1}{l s='There are %d errors.' sprintf=$nbErrors}{else}{l s='There is %d error.' sprintf=$nbErrors}{/if}</p>
					<ol>
						{foreach from=$errors item="error"}
							<li>{$error}</li>
						{/foreach}
					</ol>
				{/if}
			</div>
			{if isset($warningSslMessage)}
				<div class="alert alert-warning">{$warningSslMessage}</div>
			{/if}
			<div id="login" class="col-lg-12">
				<h1>{$shop_name}</h1>
				{if !isset($wrong_folder_name) && !isset($wrong_install_name)}
					<form action="#" id="login_form" method="post" class="form-horizontal">
						<fieldset>
							<div class="row">
								<label for="email" class="control-label col-lg-3">
									{l s='Email address:'}
								</label>
								<div class="input-group col-lg-5">
									<span class="input-group-addon"><i class="icon-envelope"></i></span>
									<input type="text" id="email" name="email" class="input email_field" tabindex="1" value="{if isset($email)}{$email|escape:'htmlall':'UTF-8'}{/if}" />
								</div>
							</div>	
							<div class="row">
								<label for="passwd" class="control-label col-lg-3">
									{l s='Password:'}
								</label>
								<div class="input-group col-lg-5">
									<span class="input-group-addon"><i class="icon-key"></i></span>
									<input id="passwd" type="password" name="passwd" class="input password_field" tabindex="2" value="{if isset($password)}{$password}{/if}"/>
								</div>
							</div>									
							<div class="row">
								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default" name="submitLogin" type="submit">
										{l s='Log in'}
									</button>
									<p>		
										<a href="#" class="show-forgot-password">
											<i class="icon-question-sign"></i>
											{l s='Lost password?'}
										</a>
									</p>
								</div>
							</div>
							<input type="hidden" name="redirect" id="redirect" value="{$redirect}"/>
						</fieldset>
					</form>					
					<form action="#" id="forgot_password_form" method="post" class="hide form-horizontal">
						<fieldset>
							<h2>{l s='Forgot your password?'}</h2>
							<p class="bold">
								{l s='In order to receive your access code by email, please enter the address you provided during the registration process.'}
							</p>	
							<div class="row">
								<label class="control-label col-lg-3">
									{l s='Email address:'}
								</label>
								<div class="input-group col-lg-5">
									<span class="input-group-addon"><i class="icon-envelope"></i></span>
									<input type="text" name="email_forgot" id="email_forgot" class="input email_field" />
								</div>
							</div>
							<div class="row">
								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default" name="submitLogin" type="submit">
										{l s='Send'}
									</button>
									<p>		
										<a href="#" class="show-login-form">
											<i class="icon-angle-left"></i>
											{l s='Back to login'}
										</a>
									</p>
								</div>
							</div>									
						</fieldset>
					</form>
				{else}
					<div class="col-lg-12">
						<p>{l s='For security reasons, you cannot connect to the Back Office until after you have:'}</p>
						<ul>
							{if isset($wrong_install_name) && $wrong_install_name == true}<li>{l s='deleted the /install folder'}</li>{/if}
							{if isset($wrong_folder_name) && $wrong_folder_name == true}<li>{l s='renamed the /admin folder (e.g. %s)' sprintf=$randomNb}</li>{/if}
						</ul>
						<p>
							<a href="{$adminUrl|escape:'htmlall':'UTF-8'}">{l s='Please then access this page by the new URL (e.g. %s)' sprintf=$adminUrl}</a>
						</p>
					</div>
				{/if}
			</div>
			<p class="text-center">
				<a href="http://www.prestashop.com">
					&copy; 2005 - {$smarty.now|date_format:"%Y"} Copyright by PrestaShop. all rights reserved.
				</a>
			</p>
		</div>	
	</fieldset>
</div>