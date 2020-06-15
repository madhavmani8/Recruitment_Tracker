package com.neoquant.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.neoquant.model.Candidate;

@Repository
public interface CandidateRepository
		extends JpaRepository<Candidate, Long>, PagingAndSortingRepository<Candidate, Long> {

	List<Candidate> findAll();

	List<Candidate> findByName(String name);

	
}
