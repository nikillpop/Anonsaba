<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html{$htmloptions} xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><title>{$title}</title><link rel="shortcut icon" href="{$cwebpath}/favicon.ico" /><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="cache-control" content="no-cache" /><meta http-equiv="expires" content="Sat, 17 Mar 1990 00:00:01 GMT" /><meta http-equiv="Content-Type" content="text/html;charset={%KU_CHARSET}" /><link rel="stylesheet" type="text/css" href="{$cwebpath}css/img_global.css" /><link rel="stylesheet" type="text/css"" href="{$cwebpath}css/imgedit.css"><script type="text/javascript" src="{$cwebpath}lib/javascript/{$jquery}"></script><script type="text/javascript" src="{$cwebpath}lib/javascript/jquery.jcrop-0.9.8.js"></script><script type="text/javascript" src="{$cwebpath}lib/javascript/images-0.5.981.js"></script><script type="text/javascript" src="{$cwebpath}lib/javascript/gettext.js"></script>{loop $ku_styles}	<link rel="{if $ neq $__.ku_defaultstyle}alternate {/if}stylesheet" type="text/css" href="{$__.cwebpath}css/{$}.css" title="{$|capitalize}" />{/loop}{if $locale eq 'ja'}	{literal}	<style type="text/css">		*{			font-family: IPAMonaPGothic, Mona, 'MS PGothic', YOzFontAA97 !important;			font-size: 1em;		}	</style>	{/literal}{/if}{if %KU_RSS neq ''}	<link rel="alternate" type="application/rss+xml" title="RSS" href="{%KU_BOARDSPATH}/{$board.name}/rss.xml" />{/if}<script type="text/javascript">		var ku_boardspath = '{%KU_BOARDSPATH}';		var ku_cgipath = '{%KU_CGIPATH}';		var style_cookie = "kustyle";{if $replythread > 0}		var ispage = false;{else}		var ispage = true;{/if}</script><script type="text/javascript" src="{%KU_WEBPATH}/lib/javascript/kusaba.js"></script></head><body onload="initialize()"><div class="adminbar">{if %KU_STYLESWITCHER}	{if %KU_DROPSWITCHER}		<select onchange="javascript:if(selectedIndex != 0)set_stylesheet(options[selectedIndex].value);return false;">			<option>{t}Styles{/t}</option>		{loop $ku_styles}			<option value="{$|capitalize}">{$|capitalize}</option>;		{/loop}		</select>	{else}		{loop $ku_styles}			[<a href="#" onclick="javascript:set_stylesheet('{$|capitalize}');return false;">{$|capitalize}</a>]&nbsp;		{/loop}	{/if}	{if count($ku_styles) > 0}		-&nbsp;	{/if}{/if}</div><div class="navbar">{if %KU_GENERATEBOARDLIST}	{foreach name=sections item=sect from=$boardlist}		[	{foreach name=brds item=brd from=$sect}		<a title="{$brd.desc}" href="{%KU_BOARDSFOLDER}{$brd.name}/">{$brd.name}</a>{if $.foreach.brds.last}{else} / {/if}	{/foreach}		 ]	{/foreach}{else}	{if is_file($boardlist)}		{include $boardlist}	{/if}{/if}</div><div class="logo">{$title}</div>