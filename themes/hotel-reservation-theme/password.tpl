{*
* 2007-2017 PrestaShop
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
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{block name='password'}
	{capture name=path}<a href="{$link->getPageLink('authentication', true)|escape:'html':'UTF-8'}" title="{l s='Authentication'}" rel="nofollow">{l s='Authentication'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Forgot your password'}{/capture}
	<div class="box">
	{block name='password_heading'}
		<h1 class="page-subheading">{l s='Forgot your password?'}</h1>
	{/block}

	{block name='errors'}
		{include file="$tpl_dir./errors.tpl"}
	{/block}

	{if isset($confirmation) && $confirmation == 1}
	<p class="alert alert-success">{l s='Your password has been successfully reset and a confirmation has been sent to your email address:'} {if isset($customer_email)}{$customer_email|escape:'html':'UTF-8'|stripslashes}{/if}</p>
	{elseif isset($confirmation) && $confirmation == 2}
	<p class="alert alert-success">{l s='A confirmation email has been sent to your address:'} {if isset($customer_email)}{$customer_email|escape:'html':'UTF-8'|stripslashes}{/if}</p>
	{else}
	<p>{l s='Please enter the email address you used to register. We will then send you a new password. '}</p>
	{block name='password_form'}
		<form action="{$request_uri|escape:'html':'UTF-8'}" method="post" class="std" id="form_forgotpassword">
			<fieldset>
				<div class="form-group">
					<label for="email">{l s='Email address'}</label>
					<input class="form-control" type="email" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'html':'UTF-8'|stripslashes}{/if}" />
				</div>
				{block name='displayForgotPasswordFormFieldsAfter'}
					{hook h='displayForgotPasswordFormFieldsAfter'}
				{/block}
				{block name='password_form_action'}
					<p class="submit">
						<button type="submit" class="btn button button-medium"><span>{l s='Retrieve Password'}&nbsp;<i class="icon-chevron-right right"></i></span></button>
					</p>
				{/block}
			</fieldset>
		</form>
	{/block}
	{/if}
	</div>
	<ul class="clearfix footer_links">
		<li><a class="btn button button-small" href="{$link->getPageLink('authentication')|escape:'html':'UTF-8'}" title="{l s='Back to Login'}" rel="nofollow"><span><i class="icon-chevron-left"></i>&nbsp;{l s='Back to Login'}</span></a></li>
	</ul>
{/block}
