package com.neoquant.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.neoquant.model.Candidate;
import com.neoquant.repository.CandidateRepository;

@Service
public class CandidateService {

	@Autowired
	private CandidateRepository candidaterepo;

	public List<Candidate> getAllEmployees(Integer pageNo, Integer pageSize, String sortBy) {
		Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));
		Page<Candidate> pageResult = candidaterepo.findAll(paging);
		if (pageResult.hasContent()) {
			return pageResult.getContent();
		} else {
			return new ArrayList<Candidate>();
		}
	}

	public void save(Candidate candidate) {
		candidaterepo.save(candidate);
	}

	public Candidate getCandidateById(Long id) {
		return candidaterepo.findById(id).get();
	}

	public List<Candidate> getAll() {
		return candidaterepo.findAll();
	}

	/*
	 * public List<Candidate> getCandidate(){ return candidaterepo.getCandidate(); }
	 */

	public List<Candidate> findByName(String name) {
		return candidaterepo.findByName(name);
	}

	public void delete(Long id) {
		candidaterepo.deleteById(id);
	}

	public void update(Candidate candidate, Long id) {
		candidaterepo.save(candidate);
	}

}
