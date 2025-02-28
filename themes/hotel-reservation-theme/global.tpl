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

{strip}
{addJsDef isMobile=$mobile_device}
{addJsDef baseDir=$content_dir}
{addJsDef baseUri=$base_uri}
{addJsDef static_token=$static_token}
{addJsDef token=$token|htmlentities:$smarty.const.ENT_QUOTES}
{addJsDef priceDisplayPrecision=$priceDisplayPrecision*$currency->decimals}
{addJsDef priceDisplayMethod=$priceDisplay}
{addJsDef roundMode=$roundMode}
{addJsDef currency=$currency}
{addJsDef currencyRate=$currencyRate|floatval}
{addJsDef currencySign=$currency->sign|html_entity_decode:2:"UTF-8"}
{addJsDef currencyFormat=$currency->format|intval}
{addJsDef currencyBlank=$currency->blank|intval}
{addJsDef isLogged=$is_logged|intval}
{addJsDef isGuest=$is_guest|intval}
{addJsDef page_name=$page_name|escape:'html':'UTF-8'}
{addJsDef contentOnly=$content_only|boolval}
{if isset($cookie->id_lang)}
	{addJsDef id_lang=$cookie->id_lang|intval}
{/if}
{addJsDef lang_iso=$lang_iso}
{addJsDef language_is_rtl=$language_is_rtl|boolval}
{addJsDefL name=FancyboxI18nClose}{l s='Close'}{/addJsDefL}
{addJsDefL name=FancyboxI18nNext}{l s='Next'}{/addJsDefL}
{addJsDefL name=FancyboxI18nPrev}{l s='Previous'}{/addJsDefL}
{addJsDefL name=RangePickerCheckin}{l s='Check-in'}{/addJsDefL}
{addJsDefL name=RangePickerCheckout}{l s='Check-out'}{/addJsDefL}
{addJsDef usingSecureMode=Tools::usingSecureMode()|boolval}
{addJsDef ajaxsearch=Configuration::get('PS_SEARCH_AJAX')|boolval}
{addJsDef instantsearch=Configuration::get('PS_INSTANT_SEARCH')|boolval}
{addJsDef quickView=$quick_view|boolval}
{addJsDef displayList=Configuration::get('PS_GRID_PRODUCT')|boolval}
{addJsDef highDPI=Configuration::get('PS_HIGHT_DPI')|boolval}
{addJsDef showFullDate=$show_full_date|boolval}
{* occupancy text *}
{addJsDef is_occupancy_wise_search=$is_occupancy_wise_search|boolval}
{addJsDef occupancy_required_for_booking=$occupancy_required_for_booking|boolval}
{addJsDef max_child_age=$max_child_age}
{addJsDef max_child_in_room=$max_child_in_room}

{addJsDefL name='max_occupancy_reached_txt'}{l s='Maximum room occupancy reached' js=1}{/addJsDefL}
{addJsDefL name='max_adults_txt'}{l s='Maximum adult occupancy reached' js=1}{/addJsDefL}
{addJsDefL name='max_children_txt'}{l s='Maximum children occupancy reached' js=1}{/addJsDefL}
{addJsDefL name='no_children_allowed_txt'}{l s='Only adults can be accommodated' js=1}{/addJsDefL}
{addJsDefL name='select_occupancy_txt'}{l s='Select Occupancy' js=1}{/addJsDefL}
{addJsDefL name='select_age_txt'}{l s='Select age' js=1}{/addJsDefL}
{addJsDefL name='under_1_age'}{l s='Under 1' js=1}{/addJsDefL}
{addJsDefL name='room_txt'}{l s='Room' js=1}{/addJsDefL}
{addJsDefL name='rooms_txt'}{l s='Rooms' js=1}{/addJsDefL}
{addJsDefL name='remove_txt'}{l s='Remove' js=1}{/addJsDefL}
{addJsDefL name='adult_txt'}{l s='Adult' js=1}{/addJsDefL}
{addJsDefL name='adults_txt'}{l s='Adults' js=1}{/addJsDefL}
{addJsDefL name='child_txt'}{l s='Child' js=1}{/addJsDefL}
{addJsDefL name='children_txt'}{l s='Children' js=1}{/addJsDefL}
{addJsDefL name='below_txt'}{l s='Below' js=1}{/addJsDefL}
{addJsDefL name='years_txt'}{l s='years' js=1}{/addJsDefL}
{addJsDefL name='all_children_txt'}{l s='All Children' js=1}{/addJsDefL}
{addJsDefL name='invalid_occupancy_txt'}{l s='Invalid occupancy(adults/children) found.' js=1}{/addJsDefL}
{/strip}
