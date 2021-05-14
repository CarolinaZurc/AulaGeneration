package com.generation.loja_games.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table (name = "tb_categoria")
public class Categoria {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private Boolean aventura;
	
	@NotNull
	private Boolean combate;
	
	@NotNull
	private Boolean educacional;

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getAventura() {
		return aventura;
	}

	public void setAventura(Boolean aventura) {
		this.aventura = aventura;
	}

	public Boolean getCombate() {
		return combate;
	}

	public void setCombate(Boolean combate) {
		this.combate = combate;
	}

	public Boolean getEducacional() {
		return educacional;
	}

	public void setEducacional(Boolean educacional) {
		this.educacional = educacional;
	}

}
