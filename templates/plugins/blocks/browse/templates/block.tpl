{**
 * plugins/blocks/browse/block.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site sidebar menu for browsing the catalog.
 *
 * @uses $browseNewReleases bool Whether or not to show a new releases link
 * @uses $browseCategoryFactory object Category factory providing access to
 *  browseable categories.
 * @uses $browseSeriesFactory object Series factory providing access to
 *  browseable series.
 *
 *}
<section class="card mb-3 default-card-layout">
    <div class="card-body">
        <div class="card-title">
            <h1>{translate key="plugins.block.browse"}</h1>
        </div>
        <ul class="list-group list-group-flush">
            {if $browseCategoryFactory && $browseCategoryFactory->getCount()}
                <li class="list-group-item no-padding-left-right">
                    <h2>{translate key="plugins.block.browse.category"}</h2>
                    <ul class="list-group list-group-no-border">
                        {iterate from=browseCategoryFactory item=browseCategory}
                            <li class="list-group-item ml-3">
                                <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()|escape}">
                                    {$browseCategory->getLocalizedTitle()|escape}
                                </a>
                            </li>
                        {/iterate}
                    </ul>
                </li>
            {/if}
        </ul>
    </div>
</section><!-- .block_browse -->
