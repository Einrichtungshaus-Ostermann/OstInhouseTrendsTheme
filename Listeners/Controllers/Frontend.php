<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - Inhouse Trends Theme
 *
 * @package   OstInhouseTrendsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstInhouseTrendsTheme\Listeners\Controllers;

use Enlight_Controller_Action as Controller;
use Enlight_Event_EventArgs as EventArgs;

class Frontend
{
    /**
     * ...
     *
     * @var string
     */
    protected $viewDir;

    /**
     * ...
     *
     * @param string $viewDir
     */
    public function __construct($viewDir)
    {
        // set params
        $this->viewDir = $viewDir;
    }

    /**
     * ...
     *
     * @param EventArgs $arguments
     */
    public function onPreDispatch(EventArgs $arguments)
    {
        // get the controller
        /* @var $controller Controller */
        $controller = $arguments->get('subject');

        // get parameters
        $request = $controller->Request();
        $view = $controller->View();

        // get currently active plugins
        $activePlugins = Shopware()->Container()->getParameter('active_plugins');

        // do we even have our client?
        if (!isset($activePlugins['OstClient'])) {
            // nothing to do
            return;
        }

        // client location service
        $locationService = Shopware()->Container()->get('ost_client.location_service');

        // assign new home url
        $view->assign('ostInhouseTrendsTheme', ['homeUrl' => $locationService->getRedirectHomeUrl()]);
    }
}
