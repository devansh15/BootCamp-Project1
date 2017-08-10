package com.gslab.oidc.model;

public class ClientRegistration {
	private String clientId;
	private String clientSecret;
	private String scope;
	private String authorizationCodeFlow;

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
