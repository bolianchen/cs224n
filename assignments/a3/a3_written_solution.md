### 2. Neural Transition-Based Dependency Parsing
#### (a)
<font size="2">

| Stack  |  Buffer  |  New dependency  | Transition |
| --- | --- | --- | --- |
| [ROOT] | [I, parsed, this, sentence, correctly] | | Initial Configuration |
| [ROOT, I] | [parsed, this, sentence, correctly] | | SHIFT |
| [ROOT, I, parsed] | [this, sentence, correctly] | | SHIFT |
| [ROOT, parsed] | [this, sentence, correctly] | parsed->I | LEFT-ARC |
| [ROOT, parsed, this] | [sentence, correctly] | | SHIFT |
| [ROOT, parsed, this, sentence] | [corrcetly] | | SHIFT |
| [ROOT, parsed, sentence] | [correctly] | sentence->this | LEFT-ARC |
| [ROOT, parsed] | [correctly] | parsed->sentence | RIGHT-ARC |
| [ROOT, parsed, correctly] | [ ] | | SHIFT |
| [ROOT, parsed] | [ ] | parsed->correctly | RIGHT-ARC |
| [ROOT] | [ ] | Root->parsed | RIGHT-ARC |

</font>

#### (b)
There would be 2*n* steps for a sentence of *n* words
- *n* SHIFT to move all the words from Buffer to Stack
- *n* LEFT-ARC or RIGHT-ARC to remove all the words from STACK

