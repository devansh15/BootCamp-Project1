package com.gslab.oidc.model;

import com.fasterxml.jackson.annotation.JsonView;
import com.gslab.oidc.jsonViews.Views;

public class User {
		@JsonView(Views.Public.class)
		String username;

		String password;

		@JsonView(Views.Public.class)
		String email;

		@JsonView(Views.Public.class)
		String phone;

		String address;

		//getters, setters and contructors
	}

