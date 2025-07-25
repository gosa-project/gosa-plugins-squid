<div class="squid-wrapper">
    <div class="row">
        <div class="col s12">
            {if $multiple_support}
                <div class="multi-check">
                    <label>
                        <p>
                            <input type="checkbox" name="use_proxy" value="1" onClick="changeState('proxy')" {if $use_proxy} checked {/if}>
                            <span></span>
                        </p>
                    </label>

                    <label>
                        <p>
                            <input type="checkbox" id="proxy" name="proxy" value="B" {$proxyState} {if !$use_proxy} disabled {/if}>
                            <span>{t}Proxy account{/t}</span>
                        </p>
                    </label>
                </div>
            {else}
                {render acl=$proxyAccountACL}
                    <label>
                        <p>
                            <input type="checkbox" id="proxy" name="proxy" value="B" {$proxyState} onClick="
                            {if $gosaProxyFlagF_W}
                                changeState('filterF');
                            {/if}

                            {if $gosaProxyFlagT_W}
                                changeState('filterT');
                                changeTripleSelectState('proxy', 'filterT', 'startHour');
                                changeTripleSelectState('proxy', 'filterT', 'startMinute');
                                changeTripleSelectState('proxy', 'filterT', 'stopMinute');
                                changeTripleSelectState('proxy', 'filterT', 'stopHour');
                            {/if}

                            {if $gosaProxyFlagB_W}
                                changeState('filterB');
                                changeTripleSelectState('proxy', 'filterB', 'quota_unit');
                                changeTripleSelectState('proxy', 'filterB', 'quota_size');
                                changeTripleSelectState('proxy', 'filterB', 'gosaProxyQuotaPeriod');
                            {/if}
                            ">
                            <span>{t}Proxy account{/t}</span>
                        </p>
                    </label>
                {/render}
            {/if}
        </div>
    </div>

    <div class="row proxy-account">
        <div class="col s12 xl6">
            {render acl=$gosaProxyFlagFACL checkbox=$multiple_support checked=$use_filterF}
                <label>
                    <p>
                        <input type="checkbox" name="filterF" id="filterF" value="F" {$filterF} {$pstate}>
                        <span>{t}Filter unwanted content (i.e. pornographic or violence related){/t}</span>
                    </p>
                </label>
            {/render}

            {render acl=$gosaProxyFlagTACL checkbox=$multiple_support checked=$use_filterT}
                <label>
                    <p>
                        <input type="checkbox" name="filterT" id="filterT" value="T" {$filterT} {$pstate}  onClick="{$ProxyWorkingStateChange}">
                        <span>{t}Limit proxy access to working time{/t}</span>
                    </p>
                </label>
            {/render}

            {render acl=$gosaProxyFlagTACL}
                <div class="inline-wrapper">
                    <div class="input-field">
                        <select size="1" id="startHour" name="startHour" {if $Tstate!=""} disabled {/if}>
                        {html_options values=$hours output=$hours selected=$starthour}
                        </select>
                    </div>

                    <div class="input-field">
                        <select size="1" id="startMinute" name="startMinute" {if $Tstate!=""} disabled {/if}>
                        {html_options values=$minutes output=$minutes selected=$startminute}
                        </select>
                    </div>

                    <div class="input-field">
                        <select size="1" id="stopHour" name="stopHour" {if $Tstate!=""} disabled {/if}>
                            {html_options values=$hours output=$hours selected=$stophour}
                        </select>
                    </div>

                    <div class="input-field">
                        <select size="1" id="stopMinute" name="stopMinute" {if $Tstate!=""} disabled {/if}>
                            {html_options values=$minutes output=$minutes selected=$stopminute}
                        </select>
                    </div>
                </div>
            {/render}
        </div>

        <div class="col s12 xl6">
            {render acl=$gosaProxyFlagBACL checkbox=$multiple_support checked=$use_filterB}
                <label>
                    <p>
                        <input type="checkbox" id="filterB" name="filterB" value="B" {$filterB} {$pstate} onClick="{$changeB}">
                        <span>{t}Restrict proxy usage by quota{/t}</span>
                    </p>
                </label>
            {/render}

            {render acl=$gosaProxyFlagBACL}
                <div class="inline-wrapper">
                    <div class="input-field">
                        <input type='text' name="quota_size" id="quota_size" size=7 maxlength=10 value="{$quota_size}" {if $Bstate!=""} disabled {/if}>
                    </div>

                    <div class="input-field">
                        <select size="1" name="quota_unit" id="quota_unit" {if $Bstate!=""} disabled {/if} >
                            {html_options options=$quota_unit selected=$quota_u}
                        </select>
                    </div>

                    <div class="input-field">
                        <select size="1" name="gosaProxyQuotaPeriod" id="gosaProxyQuotaPeriod" {if $Bstate!=""} disabled {/if} >
                            {html_options options=$quota_time selected=$gosaProxyQuotaPeriod}
                        </select>
                        <label for="gosaProxyQuotaPeriod">{t}per{/t}</label>
                    </div>
                </div>
            {/render}
        </div>
    </div>
</div>
