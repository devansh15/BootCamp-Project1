package com.gslab.oidc.model;

public class ClientRegistration {
	String ClientId;
	String Clientsecret;
	String Scope;
	String Authorization_Code_Flow;
	public String getClientId() {
		return ClientId;
	}
	public void setClientId(String clientId) {
		ClientId = clientId;
	}
	public String getClientsecret() {
		return Clientsecret;
	}
	public void setClientsecret(String clientsecret) {
		Clientsecret = clientsecret;
	}
	public String getScope() {
		return Scope;
	}
	public void setScope(String scope) {
		Scope = scope;
	}
	public String getAuthorization_Code_Flow() {
		return Authorization_Code_Flow;
	}
	public void setAuthorization_Code_Flow(String authorization_Code_Flow) {
		Authorization_Code_Flow = authorization_Code_Flow;
	}
	
	

}
