package org.generation.blogpessoal2.controller;

import java.util.List;

import org.generation.blogpessoal2.model2.Postagem2;
import org.generation.blogpessoal2.repository2.PostagemRepository2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/postagens")
@CrossOrigin ("*")

public class PostagemController {
	
	@Autowired
	private PostagemRepository2 repository;
	
	@GetMapping
	public ResponseEntity<List<Postagem2>> GetAll(){
		return ResponseEntity.ok(repository.findAll());
		}
	
	@GetMapping ("/{id}")
	public ResponseEntity<Postagem2> GetById (@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}
	
	@PostMapping 
	public ResponseEntity<Postagem2> post (@RequestBody Postagem2 postagem2) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(postagem2));
	}
	
	@PutMapping 
	public ResponseEntity<Postagem2> put (@RequestBody Postagem2 postagem2) {
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(postagem2));
		
	}
	
	@DeleteMapping ("/{id}")
	public void delete (@PathVariable long id) {
		repository.deleteById(id);
	}
	
	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<Postagem2>> GetByTitulo (@PathVariable String titulo){
		return ResponseEntity.ok(repository.findAllByTituloContainingIgnoreCase(titulo));
	}
	
}
	