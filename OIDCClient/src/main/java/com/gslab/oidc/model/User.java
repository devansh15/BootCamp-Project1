package com.gslab.oidc.model;

import com.fasterxml.jackson.annotation.JsonView;
import com.gslab.oidc.jsonViews.Views;

public class User {
	@JsonView(Views.Public.class)
	String clientId;

	@JsonView(Views.Public.class)
	String clientSecret;

	@JsonView(Views.Public.class)
	String scope;

	@JsonView(Views.Public.class)
	String authorizationCodeFlow;

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getClientSecret() {
		return clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}

	public String getAuthorizationCodeFlow() {
		return authorizationCodeFlow;
	}

	public void setAuthorizationCodeFlow(String authorizationCodeFlow) {
		this.authorizationCodeFlow = authorizationCodeFlow;
	}

}
