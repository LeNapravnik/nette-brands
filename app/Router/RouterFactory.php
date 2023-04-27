<?php

declare(strict_types=1);

namespace App\Router;

use Nette;
use Nette\Application\Routers\RouteList;


final class RouterFactory
{
	use Nette\StaticClass;

	public static function createRouter(): RouteList
	{
		$router = new RouteList;
		$router->addRoute('<presenter>/<action>', 'Brand:default');

        $router->addRoute("brand", "Brand:default");
		$router->addRoute("brand/add", "Brand:add");
		$router->addRoute("brand/edit/<id>", "Brand:edit");
        
		return $router;
	}
}
