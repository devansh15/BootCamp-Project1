package com.gslab.oidc.model;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonView;
import com.gslab.oidc.jsonViews.Views;

public class AjaxResponseBody {

		@JsonView(Views.Public.class)
		String msg;

		@JsonView(Views.Public.class)
		String code;

		@JsonView(Views.Public.class)
		List<User> result;

		//getters and setters
	}
