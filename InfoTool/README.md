# myMVC_module_InfoTool
This is a module for myMVC (https://github.com/gueff/myMVC). Get it run in a few Steps:


## 1. Download this Repository
and place it inside myMVC's `modules` folder:
~~~
    application
    config
    modules
        [..]
        InfoTool
            Controller
            Event
            Model
            _INSTALL
            README.md
        [..]
    public
    composer.json
    manager.php
    README.md
~~~

## 2. Activate via Event Listener
~~~
/*
 * switch on InfoTool in develop environment
 * immediatly after the target class/method was called
 */
if ('develop' === \MVC\Registry::get('MVC_ENV'))
{
	\MVC\Event::BIND ('mvc.reflect.targetObject.after', function ($oObject)
	{
		// switch on InfoTool
		new \InfoTool\Model\Index ($oObject->oBlogixxViewIndex);
	});
}
~~~