<?php

/**
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
 */
namespace PrestaShop\Module\Ps_metrics\Module;

use PrestaShop\PrestaShop\Core\Addon\Module\ModuleManagerBuilder;
class Upgrade
{
    /**
     * @var \Ps_metrics
     */
    private $module;
    /**
     * Install constructor.
     *
     * @param \Ps_metrics $module
     *
     * @return void
     */
    public function __construct(\Ps_metrics $module)
    {
        $this->module = $module;
    }
    /**
     * Upgrade metrics module
     *
     * @return bool
     */
    public function upgradeMetrics()
    {
        if (\true === \Module::needUpgrade($this->module)) {
            /** @var ModuleManagerBuilder $moduleManagerBuilder */
            $moduleManagerBuilder = ModuleManagerBuilder::getInstance();
            $moduleManager = $moduleManagerBuilder->build();
            return $moduleManager->upgrade((string) $this->module->name);
        }
        return \true;
    }
}
