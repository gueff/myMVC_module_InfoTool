{* see /InfoTool/README.md for more Info *}

{* value for css automatic generation parts *}
{$iStyleIteration=81}

<style>
{literal}
/*#myMvcToolbar h3 {color: #000;}*/
#myMvcToolbar {/* div */
	position: fixed;
	bottom: 0px;
	left: 0px;
	font-family: monospace, monospace;
}
#myMvcToolbar * {
	font-size: 12px;
	box-sizing: unset !important;
}
#myMvcToolbar_head {/* div */
	position: fixed;
	bottom: 50px;
	left: 0px;
	min-width: 600px;
	font-size: 12px;
	z-index: -1;
}
.myMvcToolbar-bg-danger {
	background-color: darkred !important;
}
.myMvcToolbarBlink {
	animation: myMvcToolbarBlink 1s steps(5, start) infinite;
	-webkit-animation: myMvcToolbarBlink 1s steps(5, start) infinite;
}
@keyframes myMvcToolbarBlink {
	to {
		visibility: hidden;
	}
}
@-webkit-keyframes myMvcToolbarBlink {
	to {
		visibility: hidden;
	}
}
/*******************************************************************/

#myMvcToolbar figure {
	display: block;
	margin: 0 0 120px 0px;
	clear: both;
	/* height sub menu*/
	min-height: 80px;
	max-height: 600px;
}

#myMvcToolbar > input,
#myMvcToolbar figure > div {
	height: 100%;
	display: none;
}

#myMvcToolbar figure > div {
	width: 100%;
	line-height: 1.5em;
	letter-spacing: 0.3px;
	color: #333;
	background-color: transparent;
}

navi label:nth-child(1) { border-left: 1px solid silver; }
navi label:hover { background: hsl(210,50%,40%); }
navi label:active { background: whitesmoke; }

navi label {
	float: left;
	padding: 15px 15px;
	border-top: 1px solid silver;
	border-right: 1px solid silver;
	background: hsl(210,50%,50%);
	color: #eee;
	cursor: pointer;
	margin: 0;
	font-size: 16px;
	line-height: 1;
}

/**
 main menu
 */
.tab1, .tab2, .tab3, .tab4, .tab6 {height: 600px !important;}
.tab5 {height: 100px !important;}
.tab7, .tab8 {height: 300px !important;}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#tab{$smarty.section.columns.iteration}:checked ~ figure .tab{$smarty.section.columns.iteration},
{/section}
{literal}
#tab99:checked ~ figure .tab99 {
	display: block;
}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#tab{$smarty.section.columns.iteration}:checked ~ navi label[for="tab{$smarty.section.columns.iteration}"],
{/section}
{literal}
#tab99:checked ~ navi label[for="tab99"] {
	background: whitesmoke;
	color: #111;
	position: relative;
	border-bottom: none;
}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#tab{$smarty.section.columns.iteration}:checked ~ navi label[for="tab{$smarty.section.columns.iteration}"]:after,
{/section}
{literal}
#tab99:checked ~ navi label[for="tab99"]:after {
	content: "";
	display: block;
	position: absolute;
	height: 2px;
	width: 100%;
	background: whitesmoke;
	left: 0;
	bottom: -1px;
}

/**
 sub menu
 */
#myMvcToolbar figure div input {
	height: 100%;
	display: none;
}
#myMvcToolbar figure div figure {
	display: block;
	width: 800px;
	height: 100%;
	padding: 20px;
	box-shadow: 0 0 10px 2px rgba(0, 0, 0, .15);
	overflow: auto;
	background-color: whitesmoke;
}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#subtab{$smarty.section.columns.iteration}:checked ~ figure .subtab{$smarty.section.columns.iteration},
{/section}
{literal}
#subtab99:checked ~ figure .subtab99 {
	display: block;
}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#subtab{$smarty.section.columns.iteration}:checked ~ navi label[for="subtab{$smarty.section.columns.iteration}"],
{/section}
{literal}
#subtab99:checked ~ navi label[for="subtab99"] {
	background: whitesmoke;
	color: #111;
	position: relative;
	border-bottom: none;
}

{/literal}
{section name=columns start=0 step=1 loop=$iStyleIteration}
#subtab{$smarty.section.columns.iteration}:checked ~ navi label[for="subtab{$smarty.section.columns.iteration}"]:after,
{/section}
{literal}
#subtab99:checked ~ navi label[for="subtab99"]:after {
	content: "";
	display: block;
	position: absolute;
	height: 2px;
	width: 100%;
	background: whitesmoke;
	left: 0;
	bottom: -1px;
}

{/literal}
</style>

<div id="myMvcToolbar">
	<div id="myMvcToolbar_head">
		MVC_Env: develop | PHP 7.0.8, Operating System Linux, Construction Time: 0.006 s
	</div>

	<!-- invisible action detection -->
	<input id="tab1" type="radio" name="tabs" />
	<input id="tab2" type="radio" name="tabs" />
	<input id="tab3" type="radio" name="tabs" />
	<input id="tab4" type="radio" name="tabs" />
	<input id="tab5" type="radio" name="tabs" />
	<input id="tab6" type="radio" name="tabs" />
	<input id="tab7" type="radio" name="tabs" />
	<input id="tab8" type="radio" name="tabs" />

	<!-- content -->
	<figure>
		<div class="tab1">

			<!-- invisible action detection -->
			<input id="subtab11" type="radio" name="subtabs1" checked="checked" />
			<input id="subtab12" type="radio" name="subtabs1" />
			<input id="subtab13" type="radio" name="subtabs1" />
			<input id="subtab14" type="radio" name="subtabs1" />
			<input id="subtab15" type="radio" name="subtabs1" />
			<input id="subtab16" type="radio" name="subtabs1" />
			<input id="subtab17" type="radio" name="subtabs1" />
			<input id="subtab18" type="radio" name="subtabs1" />

			<!-- menu -->
			<navi>
				<label for="subtab11">$_GET</label>
				<label for="subtab12">$_POST</label>
				<label for="subtab13">$_COOKIE</label>
				<label for="subtab14">$_REQUEST</label>
				<label for="subtab15">$_SESSION</label>
				<label for="subtab16">$_SERVER</label>
				<label for="subtab17">$_ENV</label>
				<label for="subtab18">Constants</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab11">
					<p>
						<br />unfiltered Values in $_GET:
					</p>
					<pre>{$aToolbar.aGet|@print_r:true|escape:'htmlall'}</pre>
					<p>
						to see filtered $_GET Values by myMVC, see [myMVC] => [MVC_Request::getQueryArrays]
					</p>
				</div>
				<div class="subtab12"><pre>{$aToolbar.aPost|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab13"><pre>{$aToolbar.aCookie|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab14"><pre>{$aToolbar.aRequest|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab15"><pre>{$aToolbar.aSession|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab16"><pre>{$aToolbar.aServer|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab17"><pre>{$aToolbar.aEnv|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab18"><pre>{$aToolbar.aConstant|@print_r:true|escape:'htmlall'}</pre></div>
			</figure>

		</div>
		<div class="tab2">

			<!-- invisible action detection -->
			<input id="subtab21" type="radio" name="subtabs2" checked="checked" />
			<input id="subtab22" type="radio" name="subtabs2" />
			<input id="subtab23" type="radio" name="subtabs2" />
			<input id="subtab24" type="radio" name="subtabs2" />
			<input id="subtab25" type="radio" name="subtabs2" />

			<!-- menu -->
			<navi>
				<label for="subtab21">MVC_Request::getwhitelistParams</label>
				<label for="subtab22">MVC_Request::getQueryArray</label>
				<label for="subtab23">MVC_Event</label>
				<label for="subtab24">ROUTING</label>
				<label for="subtab25">MVC_POLICY</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab21"><pre>{$aToolbar.oMvcRequestGetWhitelistParams|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab22"><pre>{$aToolbar.oMvcRequestGetQueryArray|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab23">
					<h3>BIND</h3>
					{if isset($aToolbar.aEvent.BIND)}
						{foreach key=key item=item from=$aToolbar.aEvent.BIND}
							BIND #<b>{$key}</b><pre class="prettyprint">{$item}</pre><br />
						{/foreach}
					{/if}

					<h3>RUN</h3>
					{if isset($aToolbar.aEvent.RUN)}
						{foreach key=key item=item from=$aToolbar.aEvent.RUN}
							RUN #<b>{$key}</b><pre class="prettyprint">{$item}</pre><br />
						{/foreach}
					{/if}

					{if isset($aToolbar.aEvent.RUN_BONDED)}
						<ul>
							{foreach key=key item=item from=$aToolbar.aEvent.RUN_BONDED}
								<li>RUN BONDED #<b>{$key}</b><pre class="prettyprint">{$item}</pre></li>
							{/foreach}
						</ul>
					{/if}

					<h3>UNBIND</h3>
					{if isset($aToolbar.aEvent.UNBIND)}
						{foreach key=key item=item from=$aToolbar.aEvent.UNBIND}
							UNBIND #<b>{$key}</b><pre class="prettyprint">{$item}</pre><br />
						{/foreach}
					{/if}
				</div>
				<div class="subtab24">
					<table class="table table-striped table-bordered table-hover">
						<tr>
							<th>Path:</th>
							<td>{$aToolbar.aRouting.aRequest.path|escape:"htmlall":"UTF-8"}</td>
						</tr>
						{if isset($aToolbar.aRouting.aRequest.query)}
							<tr>
								<th>Query:</th>
								<td>{$aToolbar.aRouting.aRequest.query|unescape:"url"|escape:"htmlall":"UTF-8"}</td>
							</tr>
						{/if}
						<tr>
							<th>Target:</th>
							<td>\{$aToolbar.aRouting.sModule}\Controller\{$aToolbar.aRouting.sController}::{$aToolbar.aRouting.sMethod}({$aToolbar.aRouting.sArg|escape:"htmlall":"UTF-8"})	</td>
						</tr>
						<tr>
							<th>Routing:</th>
							<td><pre>{$aToolbar.aRouting.aRoute|@print_r:true|escape:"htmlall":"UTF-8"}</pre></td>
						</tr>
						<tr>
							<th>Routing JsonBuilder:</th>
							<td><pre>{$aToolbar.aRouting.sRoutingJsonBuilder|escape:"htmlall":"UTF-8"}</pre></td>
						</tr>
						<tr>
							<th>Routing Handling:</th>
							<td><pre>{$aToolbar.aRouting.sRoutingHandling|escape:"htmlall":"UTF-8"}</pre></td>
						</tr>
					</table>
				</div>
				<div class="subtab25">
					<h3>RULES</h3>
					<pre>{$aToolbar.aPolicy.aRule|@print_r:true|escape:'htmlall'}</pre>
					<h3>APPLIED</h3>
					<b>{$aToolbar.aPolicy.sAppliedAt}</b><br />
					<pre>{$aToolbar.aPolicy.aApplied|@print_r:true|escape:'htmlall'}</pre>
				</div>
			</figure>
		</div>
		<div class="tab3">

			<!-- invisible action detection -->
			<input id="subtab31" type="radio" name="subtabs3" checked="checked" />
			<input id="subtab32" type="radio" name="subtabs3" />
			<input id="subtab33" type="radio" name="subtabs3" />

			<!-- menu -->
			<navi>
				<label for="subtab31">Template</label>
				<label for="subtab32">Smarty Template Vars</label>
				<label for="subtab33">Rendered</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab31">
					<ul>
						<li><b>Template</b>: {$aToolbar.sTemplate|replace:$aRegistry.MVC_VIEW_TEMPLATES:''|escape:'htmlall'}</li>
						<li><b>Template Folder</b>: {$aRegistry.MVC_VIEW_TEMPLATES|escape:'htmlall'}</li>
					</ul>
					<hr>
					<!-- @see https://www.w3schools.com/howto/tryit.asp?filename=tryhow_syntax_highlight -->
					<pre class="prettyprint">{$aToolbar.sTemplateContent|escape:'htmlall'}</pre>
				</div>
				<div class="subtab32"><pre>{$aToolbar.aSmartyTemplateVars|@print_r:true|escape:'htmlall'}</pre></div>
				<div class="subtab33"><pre class="prettyprint">{$aToolbar.sRendered|escape:'htmlall'}</pre></div>
			</figure>
		</div>
		<div class="tab4">

			<!-- invisible action detection -->
			<input id="subtab41" type="radio" name="subtabs4" checked="checked" />

			<!-- menu -->
			<navi>
				<label for="subtab41">Files loaded</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab41">
					<b>MVC_BASE_PATH</b>: {$aRegistry.MVC_BASE_PATH|escape:'htmlall'}
					<hr>
					<ol class="prettyprint">
						{foreach key=key item=item from=$aToolbar.aFilesIncluded}
							<li>{$item|replace:$aRegistry.MVC_BASE_PATH:''|escape:'htmlall'}</li>
						{/foreach}
				</div>
			</figure>
		</div>
		<div class="tab5">

			<!-- invisible action detection -->
			<input id="subtab51" type="radio" name="subtabs5" checked="checked" />

			<!-- menu -->
			<navi>
				<label for="subtab51">Files loaded</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab51">
					<b>Real Memory Usage</b>: {$aToolbar.aMemory.iRealMemoryUsage} KB<br />
					<b>Memory Usage</b>: {$aToolbar.aMemory.dMemoryUsage} KB<br />
					<b>Memory Peak Usage</b>: {$aToolbar.aMemory.dMemoryPeakUsage} KB<br />
				</div>
			</figure>
		</div>
		<div class="tab6">

			<!-- invisible action detection -->
			<input id="subtab61" type="radio" name="subtabs6" checked="checked" />

			<!-- menu -->
			<navi>
				<label for="subtab61">Registry</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab61"><pre>{$aToolbar.aRegistry|@print_r:true|escape:'htmlall'}</pre></div>
			</figure>
		</div>
		<div class="tab7">

			<!-- invisible action detection -->
			<input id="subtab71" type="radio" name="subtabs7" checked="checked" />

			<!-- menu -->
			<navi>
				<label for="subtab71">Cache</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab71"><pre>{$aToolbar.aCache|@print_r:true|escape:'htmlall'}</pre></div>
			</figure>
		</div>
		<div class="tab8">

			<!-- invisible action detection -->
			<input id="subtab81" type="radio" name="subtabs8" checked="checked" />

			<!-- menu -->
			<navi>
				<label for="subtab81">Last Error</label>
			</navi>

			<!-- content -->
			<figure>
				<div class="subtab81">{foreach key=key item=item from=$aToolbar.aError}<b>{$key}</b>: {$item}<br />{/foreach}</div>
			</figure>
		</div>
	</figure>

	<!-- Main menu -->
	<navi>
		<label for="tab1">
			<i class="fa fa-cubes"></i> Variables
		</label>
		<label for="tab2">
			<i class="fa fa-cube"></i> myMVC
		</label>
		<label for="tab3">
			<i class="fa fa-code"></i> View
		</label>
		<label for="tab4">
			<i class="fa fa-file-o"></i> Files
		</label>
		<label for="tab5">
			<i class="fa fa-bar-chart-o"></i> Memory
		</label>
		<label for="tab6">
			<i class="fa fa-key"></i> Registry
		</label>
		<label for="tab7">
			<i class="fa fa-refresh"></i> Cache
		</label>
		{if !empty($aToolbar.aError)}
		<label for="tab8" class="myMvcToolbar-bg-danger">
			<i class="fa fa-warning myMvcToolbarBlink"></i> Error
		</label>
		{/if}
	</navi>

</div>

<script defer>
	{literal}
	/**
	 * vanilla js dom ready
	 * @see http://stackoverflow.com/a/13456810/2487859
	 */
	window.readyHandlers = [];
	window.ready = function ready(handler) {window.readyHandlers.push(handler); handleState();};
	window.handleState = function handleState () {if (['interactive', 'complete'].indexOf(document.readyState) > -1) {while(window.readyHandlers.length > 0) {(window.readyHandlers.shift())();}}};
	document.onreadystatechange = window.handleState;

	document.getElementById("myMvcToolbar").addEventListener("click", function(oEvent){
		oEvent.stopPropagation();
	});

	window.addEventListener('click', function (evt) {
		for (var i = 1; i < 10; i++) {
			var oElement = document.getElementById('tab' + i);
			if (null !== oElement) {
				oElement.checked = false;
			}
		}
	});

	ready(function () {
		console.log('%cmyMVC %cInfoTool', 'color: blue;', 'color: red;');
		console.dir({/literal}{$aToolbar|json_encode}{literal});
	});
	{/literal}
</script>
