package com.vksagar.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/message")
	public String fetchMessage() {
		return "Welcome to Spring - Jenkins - Docker integration";
	}
}
