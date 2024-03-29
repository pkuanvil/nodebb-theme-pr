<!-- IMPORT partials/noscript/register-require-javascript.tpl -->
<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row register">
	<div class="row {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<div class="{register_window:spansize}">
			<div class="register-block">
				<div class="alert alert-danger{{{ if !error }}} hidden{{{ end }}}" id="register-error-notify" >
					<strong>[[error:registration-error]]</strong>
					<p>{error}</p>
				</div>
				<div id="pr-register-notice">
					<strong>[[persona:pr_register.register-notice]]</strong>
				</div>
				<p></p>
				<form component="register/local" class="form-horizontal" role="form" action="{config.relative_path}/register" method="post">
					<div class="row mb-3">
						<label for="username" class="col-lg-2 col-form-label">[[register:username]]</label>
						<div class="col-lg-10">
							<input class="form-control" type="text" placeholder="[[register:username-placeholder]]" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="nickname" />
							<span class="register-feedback" id="username-notify"></span>
							<span class="form-text">[[register:help.username-restrictions, {minimumUsernameLength}, {maximumUsernameLength}]]</span>
							<span class="form-text pr-warning">[[persona:pr_register.username_warning]]</span>
						</div>
					</div>
					<div class="row mb-2">
						<label for="password" class="col-lg-2 col-form-label">[[register:password]]</label>
						<div class="col-lg-10">
							<input class="form-control" type="password" placeholder="[[register:password-placeholder]]" name="password" id="password" autocomplete="new-password" autocapitalize="off" />
							<span class="register-feedback" id="password-notify"></span>
							<span class="form-text">[[register:help.minimum-password-length, {minimumPasswordLength}]]</span>
							<p id="caps-lock-warning" class="text-danger hidden">
								<i class="fa fa-exclamation-triangle"></i> [[login:caps-lock-enabled]]
							</p>
						</div>
					</div>
					<div class="row mb-2">
						<label for="password-confirm" class="col-lg-2 col-form-label">[[register:confirm-password]]</label>
						<div class="col-lg-10">
							<input class="form-control" type="password" placeholder="[[register:confirm-password-placeholder]]" name="password-confirm" id="password-confirm" autocomplete="new-password" autocapitalize="off" />
							<span class="register-feedback" id="password-confirm-notify"></span>
						</div>
					</div>
					<div class="row mb-2">
						<label class="col-lg-2 col-form-label">[[persona:pr_register.email_verify]]</label>
						<div class="col-lg-10">
							<div id="pr-txt" class="col-form-label" style="line-break: anywhere"></div>
						</div>
					</div>
					<div class="row">
						<div class="offset-lg-2 col-lg-10">
							<button class="btn btn-secondary btn-block" id="pr-button" type="submit">[[persona:pr_register.button]]</button>
						</div>
					</div>
					<div class="row mb-2">
						<div class="col-lg-10">
							<hr/>
							<label for="pr-txt">
								<span>[[persona:pr_register.message-1]]</span>
								<span id="pr-email"></span>
								<span>[[persona:pr_register.message-2]]</span>
							</label>
							<div>
								<span id="pr-feedback"></span>
							</div>
							<hr/>
						</div>
					</div>

					{{{each regFormEntry}}}
					<div class="row mb-2">
						<label for="register-{regFormEntry.styleName}" class="col-lg-2 col-form-label">{regFormEntry.label}</label>
						<div id="register-{regFormEntry.styleName}" class="col-lg-10">
							{{regFormEntry.html}}
						</div>
					</div>
					{{{end}}}

					<div class="row">
						<div class="offset-lg-2 col-lg-10">
							<button class="btn btn-primary btn-lg" id="register" type="submit">[[register:register-now-button]]</button>
						</div>
					</div>
					<input id="token" type="hidden" name="token" value="" />
					<input id="noscript" type="hidden" name="noscript" value="true" />
					<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				</form>
			</div>
		</div>

		{{{ if alternate_logins }}}
		<div class="col-md-6">
			<div class="alt-register-block">
				<h4>[[register:alternative-registration]]</h4>
				<ul class="alt-logins">
					{{{each authentication}}}
					<li class="{authentication.name}"><a rel="nofollow noopener noreferrer" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></i></a></li>
					{{{end}}}
				</ul>
			</div>
		</div>
		{{{ end }}}
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>