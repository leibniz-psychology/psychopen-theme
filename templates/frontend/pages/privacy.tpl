{**
 * templates/frontend/pages/privacy.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Copyright (c) 2019 Ronny Bölter, Leibniz Institute for Psychology Information (https://leibniz-psychology.org)
 *
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the privacy policy.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="manager.setup.privacyStatement"}

<div id="main-content">
    {include file="frontend/components/breadcrumbs.tpl" currentTitleKey="manager.setup.privacyStatement"}
    <h1 class="mt-4">{translate key="manager.setup.privacyStatement"}</h1>
    <div class="mb-5">{$privacyStatement}</div>
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
