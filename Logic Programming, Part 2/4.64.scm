;; Louis Reasoner mistakenly deletes the outranked-by rule (section 4.4.1) from the data 
;; base. When he realizes this, he quickly reinstalls it. Unfortunately, he makes a slight 
;; change in the rule, and types it in as

; (rule (outranked-by ?staff-person ?boss)
;       (or (supervisor ?staff-person ?boss)
;           (and (outranked-by ?middle-manager ?boss)
;                (supervisor ?staff-person ?middle-manager))))

;; Just after Louis types this information into the system, DeWitt Aull comes by to find 
;; out who outranks Ben Bitdiddle. He issues the query

; (outranked-by (Bitdiddle Ben) ?who)

;; After answering, the system goes into an infinite loop. Explain why. 

; => (outranked-by (Bitdiddle Ben) ?who) is expanded to (outranked-by ?middle-manager ?boss)
;    which leads to (outranked-by ?staff-person ?boss). Infinite loop.

