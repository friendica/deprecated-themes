
<a name="acl-wrapper-target"></a>
<div id="acl-wrapper">
	<div id="acl-public-switch">
		<a href="{{$return_path}}#acl-wrapper-target" {{if $is_private == 1}}class="acl-public-switch-selected"{{/if}} >{{$private}}</a>
		<a href="{{$return_path}}{{$public_link}}#acl-wrapper-target" {{if $is_private == 0}}class="acl-public-switch-selected"{{/if}} >{{$public}}</a>
	</div>
	<div id="acl-list">
		<div id="acl-list-content">
			<div id="acl-html-groups" class="acl-html-select-wrapper">
			{{$group_perms}}<br />
			<select name="group_allow[]" multiple {{if $is_private == 0}}disabled{{/if}} id="acl-html-group-select" class="acl-html-select" size=7>
				{{foreach $acl_data.groups as $group}}
				<option value="{{$group.id}}" {{if $is_private == 1}}{{if $group.selected}}selected{{/if}}{{/if}}>{{$group.name}}</option>
				{{/foreach}}
			</select>
			</div>
			<div id="acl-html-contacts" class="acl-html-select-wrapper">
			{{$contact_perms}}<br />
			<select name="contact_allow[]" multiple {{if $is_private == 0}}disabled{{/if}} id="acl-html-contact-select" class="acl-html-select" size=7>
				{{foreach $acl_data.contacts as $contact}}
				<option value="{{$contact.id}}" {{if $is_private == 1}}{{if $contact.selected}}selected{{/if}}{{/if}}>{{$contact.name}} ({{$contact.networkName}})</option>
				{{/foreach}}
			</select>
			</div>
		</div>
	</div>
	<span id="acl-fields"></span>
</div>

