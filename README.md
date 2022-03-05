## Knowledge Representation
with Horn Clauses

### Goals

- Understand basic notions such as:
    * terms
    * clauses (facts, rules, goals)
    * propositional vs. relational representations
    * logic variables
    * extensional vs. intensional representations
    * unifiers and substitutions
    * unification and MGU

### Overview

- Horn clauses
    * Motivations
        + nice expressiveness-tractability trade-off
        + basis for Prolog and LP
        + very well established: tons of literature, theorems, technologies
    * Overall syntax (notice the difference among terms and clauses)
    * 2P-Kt as the underlying technology for examples
- Representing objects with terms
    * Syntax for terms (skip variables)
    * Examples:
        - How to consturct Peano integers
        - How to construct data structures with terms (e.g. lists)
- Representing propositions, sets, or relations with predicates
    * Syntax for horn clauses
    * Examples
    * Defining propositions, sets, or relations via clauses
        + Sets as unary predicates, Relations as N-ary predicates, Propositions as 0-ary predicates
        + How to construct sets (e.g. nat/1, lst/1)
        + How to construct relations (e.g. succ/2, member/2, sum/3, append/3)
- Prolog trick:
    * same syntax for both terms and predicates 
        + making them interchaengable
- Propositional vs. Relational representations?
- Logic variables: 
    * Recall overall syntax, highlighting variables
    * Purpose: placeholders for unknown terms (representing unknown entities)
    * Definitions: ground term/clause/theory
    * Extensional vs. Intensional: 
        + logic variables support intensional representations via non-ground clauses
        * otherwise one would require all information to be extensionally represented via ground clauses
    * Two powerful mechanisms:
        * Unification: computes a substitution making two terms/clauses equal
        * Resolution: attempts to prove a goal true or not
        * Both rely on the notion of subtitution
- Unifier: a mapping among variables and terms (possibly attained via unification)
    * Can be empty
    * Can be _applied_ to a term, producing a new term
    * Substituion: the result of unification or resolution
        - Can be failed, or a unifier
- Unification: algorithms to compute the most general unifier (MGU) among 2 terms 
    * Unification table
    * Mention the Martelli and Montanari algorithm
