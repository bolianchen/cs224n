# CS224N: Natural Language Processing with Deep Learning

My assignments solutions for Stanford CS224N, 2021Winter.

## Assignments
### #1 Exploring Word Vectors
[coding solution](assignments/a1/exploring_word_vectors.pdf)

**Summary:**  
- Find word embeddings by first construct a co-occurrence matrix from a large corpus and then perform singular value decomposition(SVD) on the matrix
- Load the GloVe word embeddings via Gensim and compare them with their SVD-based counterparts by 2D visualizations
- Inspect various characteristics of the GloVe embeddings based on cosine similarity  


### #2 word2vec
[handout](assignments/a2/a2_handout.pdf)  
[written solution](assignments/a2/a2_written_solution.pdf)  
[coding solution](assignments/a2/)

**Summary:**  
* Derive by hand the partial derivatives of each loss component with respct to center and outside word vectors for two variants of the skip-gram model:
    * one under Naive Bayes assumption
    * one applying negative sampling
* Implement the losses and their derivatives into functions according to the handwritting answers
* Takeaways:
    * forms of the handwritting answers should be simplified properly to facilitate vectorizing the implementations
    * appreciate computations automated by deep learning frameworks after manully implementing a simpler version

