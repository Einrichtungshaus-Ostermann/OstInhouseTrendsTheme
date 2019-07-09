
{* file to extend *}
{extends file="parent:frontend/ost-article-family/product-slider.tpl"}





{* overwrite the slider for multiple rows *}
{block name="ost-article-family--slider"}
    {include file="frontend/_includes/product_slider.tpl" articles=$ostArticleFamilyArticles articlesPerColumn=3}
{/block}