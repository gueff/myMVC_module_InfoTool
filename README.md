# myMVC_module_InfoTool
This is a Debug-Toolbar module for [myMVC > 1.1.1 (dev-master)](https://github.com/gueff/myMVC/tree/9d2fab5b4e7f9fcd57a788ab86a145c169e4c9ad)

If you need this for myMVC <= 1.1.1, take this Version of myMVC_module_InfoTool: https://github.com/gueff/myMVC_module_InfoTool/releases/tag/1.0.0

## 1. Download this Repository
and place it inside myMVC's `modules` folder:
~~~
    application
    config
    modules
        [..]
        InfoTool
            Model
            templates
            README.md
        [..]
    public
    composer.json
    manager.php
    README.md
~~~

## 2. Activate via Event Listener
~~~
/** @var \MVC\DataType\DTArrayObject $oDTArrayObject */
'mvc.reflex.reflect.targetObject.after' => function (\MVC\DataType\DTArrayObject $oDTArrayObject) {

    $oView = $oDTArrayObject
        ->getDTKeyValueByKey('oReflectionObject')
        ->get_sValue()
        ->oView;

    // switch on InfoTool
    new \InfoTool\Model\Index ($oView);
},
~~~
