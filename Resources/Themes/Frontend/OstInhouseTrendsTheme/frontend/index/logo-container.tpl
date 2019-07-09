
{* file to extend *}
{extends file='parent:frontend/index/logo-container.tpl'}

{* set namespace *}
{namespace name="frontend/index/logo-container"}



{* ... *}
{block name='frontend_index_logo'}

    {* logo *}
    {assign var="logo" value="frontend/_public/src/img/logos/trends-logo--349x50.png"}

    {* overwrite theme settings *}
    {$theme.desktopLogo         = {$logo}}
    {$theme.tabletLandscapeLogo = {$logo}}
    {$theme.tabletLogo          = {$logo}}
    {$theme.mobileLogo          = {$logo}}



    {* consultant header *}
    <div class="logo--shop ost-consultant--logo-container block">
        <a class="logo--link" href="{url controller='OstConsultant' action='dashboard'}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">
            <picture>
                <source srcset="{link file=$theme.desktopLogo}" media="(min-width: 78.75em)">
                <source srcset="{link file=$theme.tabletLandscapeLogo}" media="(min-width: 64em)">
                <source srcset="{link file=$theme.tabletLogo}" media="(min-width: 48em)">
                <img srcset="{link file=$theme.mobileLogo}" alt="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}" />
            </picture>
        </a>
    </div>

    {* default header *}
    <div class="logo--shop block">
        <a class="logo--link" href="{if is_array( $ostInhouseTrendsTheme ) && $ostInhouseTrendsTheme.homeUrl != ""}{$ostInhouseTrendsTheme.homeUrl}{else}{url controller='index'}{/if}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">
            <picture>
                <source srcset="{link file=$theme.desktopLogo}" media="(min-width: 78.75em)">
                <source srcset="{link file=$theme.tabletLandscapeLogo}" media="(min-width: 64em)">
                <source srcset="{link file=$theme.tabletLogo}" media="(min-width: 48em)">
                <img srcset="{link file=$theme.mobileLogo}" alt="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}" />
            </picture>
        </a>
    </div>

{/block}
