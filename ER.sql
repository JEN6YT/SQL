-- ER: Entity Relationship

-- ENTITY, which is an object that we want to model/store information about
-- ATTRIBUTES, which contain special pieces of infomation about the entity
-- RELATIONSHIP: when there are multiple attributes, we have to define the relationship between them (verb)
        -- relationship attributes
        -- relationship cardinanlity: 
            -- ex. relationship between student and class: a student can take N classes, a class can be taken by M students (M:N relationship)

-- weak entity: an entity that cannot be uniquely identified by its attributes alone
-- indentifying relationship: a relationship that uniquely identify a weak entity
-- Ex. Exam must be associated with a class (class HAS exam)
-- note that every exam must be associated with a class(total participation), but not all classes need to have exams(partial participation)

