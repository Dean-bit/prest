{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License version 3.0
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License version 3.0
 *}

{** <link href="{$pathVendor|escape:'htmlall':'UTF-8'}" rel=preload as=script> *}
<link href="{$pathApp|escape:'htmlall':'UTF-8'}" rel=preload as=script>
<link href="{$urlAccountsCdn|escape:'htmlall':'UTF-8'}" rel=preload as=script>
<link rel="stylesheet" href="{$pathAppAssets|escape:'htmlall':'UTF-8'}" type="text/css" media="all">

<div id="app"></div>

<script src="{$urlAccountsCdn|escape:'htmlall':'UTF-8'}" type="text/javascript" defer></script>
{** <script src="{$pathVendor|escape:'htmlall':'UTF-8'}" type="module" defer></script> *}
<script src="{$pathApp|escape:'htmlall':'UTF-8'}" type="module" defer></script>

<style>
  /** Hide native multistore module activation panel, because of visual regressions on non-bootstrap content */
  #content.nobootstrap div.bootstrap.panel {
    display: none;
  }
</style>

