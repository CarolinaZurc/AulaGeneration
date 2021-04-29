package org.generation.blogpessoal2.repository2;

import java.util.List;

import org.generation.blogpessoal2.model2.Postagem2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostagemRepository2 extends JpaRepository<Postagem2, Long>{
	public List<Postagem2> findAllByTituloContainingIgnoreCase (String titulo);

}
