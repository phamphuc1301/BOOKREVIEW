package com.fsoft.repositories;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entities.Course;

@Repository("courseRepository")
public interface CourseRepository extends PagingAndSortingRepository<Course, Long> {

}
