package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Essa semana espero poder aprender com facilidade a matéria de Spring Boot, para poder buscar mais conteúdo, além do ministrado na aula como forma de fixar o aprendizado.";
	}

}
