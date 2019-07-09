
{* file to extend *}
{extends file='parent:frontend/index/header.tpl'}

{* set namespace *}
{namespace name="frontend/index/header"}



{* ... *}
{block name='frontend_index_header_favicons'}

    {* logo *}
    {assign var="favicon" value="frontend/_public/src/img/favicons/favicon.ico"}

    {* overwrite theme settings *}
    {$theme.favicon        = {$favicon}}
    {$theme.appleTouchIcon = {$favicon}}

    {* parent *}
    {$smarty.block.parent}

{/block}
