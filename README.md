# myMVC_module_InfoTool

This is a Debug-Toolbar module for myMVC Version 2.0.1: https://github.com/gueff/myMVC/releases/tag/2.0.1

- _If you need this for myMVC < 2.0.0, take Version 1.1.2 of myMVC_module_InfoTool: https://github.com/gueff/myMVC_module_InfoTool/releases/tag/1.1.2_
- _If you need this for myMVC < 1.2.0, take Version 1.0.0 of myMVC_module_InfoTool: https://github.com/gueff/myMVC_module_InfoTool/releases/tag/1.0.0_

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
    myMVC.phar
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
