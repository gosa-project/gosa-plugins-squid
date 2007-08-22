<div class='default' style='margin:12px; '>
     <p><b>{t}GOsa core settings{/t}</b></p>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Disable primary group filter{/t}
        </div>
        <div class='step4_value'>
	
            <select name="noprimarygroup" size="1" title="">
            	{html_options options=$bool selected=$optional.noprimarygroup}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Display summary in listings{/t}
        </div>
        <div class='step4_value'>
	
            <select name="list_summary" size="1" title="">
            	{html_options options=$bool selected=$optional.list_summary}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Honour administrative units{/t}
        </div>
        <div class='step4_value'>
	
            <select name="strict_units" size="1" title="">
            	{html_options options=$bool selected=$optional.strict_units}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Smarty compile directory{/t}
        </div>
        <div class='step4_value'>
			<input size=40 id='compile' name='compile' 
				type='text' value='{$optional.compile}'>
        </div>
    </div>
    <div class='step4_container'>
        <div class='step4_name'>
            {t}Path for PPD storage{/t}
        </div>
        <div class='step4_value'>
            {if $optional.ppd_path_active == FALSE}
                <input type='checkbox' value='1' name='ppd_path_active'
                    onClick='changeState("ppd_path");'>
                <input size=40 id='ppd_path' name='ppd_path' type='text' value='{$optional.ppd_path}' disabled>
            {else}
                <input type='checkbox' value='1' name='ppd_path_active' checked>
                <input size=40 id='ppd_path' name='ppd_path' type='text' value='{$optional.ppd_path}'  >
            {/if}
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Path for kiosk profile storage{/t}
        </div>
        <div class='step4_value'>
            {if $optional.kioskpath_active == FALSE}
                <input type='checkbox' value='1' name='kioskpath_active'
                    onClick='changeState("kioskpath");'>
                <input size=40 id='kioskpath' name='kioskpath' 
					type='text' value='{$optional.kioskpath}' disabled>
            {else}
                <input type='checkbox' value='1' name='kioskpath_active' checked>
                <input size=40 id='kioskpath' name='kioskpath' 
					type='text' value='{$optional.kioskpath}'  >
            {/if}
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Enable system deployment{/t}
        </div>
        <div class='step4_value'>
            {if $optional.gotomasses_active == FALSE}
                <input type='checkbox' value='1' name='gotomasses_active'
                    onClick='changeState("gotomasses_file");'>
                <input size=40 id='gotomasses_file' name='gotomasses_file' 
					type='text' value='{$optional.gotomasses_file}' disabled>
            {else}
                <input type='checkbox' value='1' name='gotomasses_active' checked>
                <input size=40 id='gotomasses_file' name='gotomasses_file' 
					type='text' value='{$optional.gotomasses_file}'  >
            {/if}
        </div>
    </div>


    <div class='step4_container'>
        <div class='step4_name'>
            {t}Network resolv hook{/t}
        </div>
        <div class='step4_value'>
            {if $optional.auto_network_hook_active == FALSE}
                <input type='checkbox' value='1' name='auto_network_hook_active'
                    onClick='changeState("auto_network_hook");'>
                <input size=40 id='auto_network_hook' name='auto_network_hook' 
					type='text' value='{$optional.auto_network_hook}' disabled>
            {else}
                <input type='checkbox' value='1' name='auto_network_hook_active' checked>
                <input size=40 id='auto_network_hook' name='auto_network_hook' type='text' 
					value='{$optional.auto_network_hook}'  >
            {/if}
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Mail queue script{/t}
        </div>
        <div class='step4_value'>
            {if $optional.mailQueueScriptPath_active == FALSE}
                <input type='checkbox' value='1' name='mailQueueScriptPath_active'
                    onClick='changeState("mailQueueScriptPath");'>
                <input size=40 id='mailQueueScriptPath' name='mailQueueScriptPath' 
					type='text' value='{$optional.mailQueueScriptPath}' disabled>
            {else}
                <input type='checkbox' value='1' name='mailQueueScriptPath_active' checked>
                <input size=40 id='mailQueueScriptPath' name='mailQueueScriptPath' type='text' 
					value='{$optional.mailQueueScriptPath}'  >
            {/if}
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Notification script{/t}
        </div>
        <div class='step4_value'>
            {if $optional.notifydir_active == FALSE}
                <input type='checkbox' value='1' name='notifydir_active'
                    onClick='changeState("notifydir");'>
                <input size=40 id='notifydir' name='notifydir' 
					type='text' value='{$optional.notifydir}' disabled>
            {else}
                <input type='checkbox' value='1' name='notifydir_active' checked>
                <input size=40 id='notifydir' name='notifydir' 
					type='text' value='{$optional.notifydir}'  >
            {/if}
        </div>
    </div>

    <p><b>{t}Login and session{/t}</b></p>
    <div class='step4_container'>
        <div class='step4_name'>
            {t}Enforce register_globals to be deactivated{/t}
        </div>
        <div class='step4_value'>
	
            <select name="forceglobals" size="1" title="">
            	{html_options options=$bool selected=$optional.forceglobals}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Enforce encrypted connections{/t}
        </div>
        <div class='step4_value'>
	
            <select name="forcessl" size="1" title="">
            	{html_options options=$bool selected=$optional.forcessl}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Warn if session is not encrypted{/t}
        </div>
        <div class='step4_value'>
	
            <select name="warnssl" size="1" title="">
            	{html_options options=$bool selected=$optional.warnssl}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Session lifetime{/t}
        </div>
        <div class='step4_value'>
			<input size=10 id='session_lifetime' name='session_lifetime' 
				type='text' value='{$optional.session_lifetime}'>
        </div>
    </div>

    <p><b>{t}Debugging{/t}</b></p>
	
    <div class='step4_container'>
        <div class='step4_name'>
            {t}Show PHP errors{/t}
        </div>
        <div class='step4_value'>
            <select name="errorlvl" size="1" title="">
            {html_options options=$bool selected=$errorlvl}
            </select>
        </div>
    </div>


    <div class='step4_container'>
        <div class='step4_name'>
            {t}Maximum LDAP query time{/t}
        </div>
        <div class='step4_value'>
            {if $optional.max_ldap_query_time_active == FALSE}
                <input type='checkbox' value='1' name='max_ldap_query_time_active'
                    onClick='changeState("max_ldap_query_time");'>
                <input size=10 id='max_ldap_query_time' name='max_ldap_query_time' 
					type='text' value='{$optional.max_ldap_query_time}' disabled>
            {else}
                <input type='checkbox' value='1' name='max_ldap_query_time_active' checked>
                <input size=10 id='max_ldap_query_time' name='max_ldap_query_time' 
					type='text' value='{$optional.max_ldap_query_time}'  >
            {/if}
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Log LDAP statistics{/t}
        </div>
        <div class='step4_value'>
	
            <select name="ldapstats" size="1" title="">
            	{html_options options=$bool selected=$optional.ldapstats}
            </select>
        </div>
    </div>

    <div class='step4_container'>
        <div class='step4_name'>
            {t}Debug level{/t}
        </div>
        <div class='step4_value'>
			<select name='debuglevel'>
				{if $optional.debuglevel == 0}
					<option value='0' selected>0 {t}Disabled{/t}</option>
					<option value='1'>1 {t}Enabled{/t}</option>
				{else}
					<option value='0'>0 {t}Disabled{/t}</option>
					<option value='1' selected>1 {t}Enabled{/t}</option>
				{/if}
			</select>		
        </div>
    </div>
</div>

<input type='hidden' value='1' name='step6a_posted'>
