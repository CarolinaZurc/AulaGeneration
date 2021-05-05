package com.farmacia.farmacia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table (name = "categoria")

public class Categoria {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private Boolean tarjapreta;
	
	@NotNull
	private Boolean tarjavermelha;
	
	@NotNull
	private Boolean naotarjado;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getTarjapreta() {
		return tarjapreta;
	}

	public void setTarjapreta(Boolean tarjapreta) {
		this.tarjapreta = tarjapreta;
	}

	public Boolean getTarjavermelha() {
		return tarjavermelha;
	}

	public void setTarjavermelha(Boolean tarjavermelha) {
		this.tarjavermelha = tarjavermelha;
	}

	public Boolean getNaotarjado() {
		return naotarjado;
	}

	public void setNaotarjado(Boolean naotarjado) {
		this.naotarjado = naotarjado;
	}

}
