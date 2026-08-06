# CS3244 source audit

## Source

- File reviewed: `/Users/gaoyening/Downloads/CS3244笔记.pdf`
- Physical pages: 34
- SHA-256: `909d161457b88fc7f94491c8e95b880d8757870f68e3db5f5cd042cbcdddd0c4`
- Review method: all pages were rendered and checked visually; OCR text was used only as a secondary aid.

## Coverage map

| Source pages | Main topics | Guide sections |
|---|---|---|
| 1 | Distance, scaling, KNN, high-dimensional data | Data geometry and KNN |
| 2-5 | Decision trees, impurity, pruning, bagging, random forests, boosting | Trees and ensembles |
| 6-10 | Linear and logistic regression, gradient methods, SVM and kernels | Linear models and optimisation |
| 10-17 | Bias-variance, regularisation, MLE/MAP, validation and early stopping | Generalisation and model selection |
| 18-20 | Classification and regression metrics, ROC/AUC, vector similarity | Evaluation |
| 21-25 | PCA, LDA, feature selection, imbalance, tabular/time/image/text features | Representation and features |
| 26-32 | Perceptron, MLP, backpropagation, CNN, RNN, LSTM and GRU | Neural networks |
| 33-34 | K-means and autoencoders | Unsupervised learning |

## Substantive corrections

- The KNN rule `k = sqrt(n)` is treated as a possible starting heuristic, not a theorem or default requirement.
- Decision-tree inference is stated as `O(tree depth)`, with `O(log n)` applying only to a balanced tree.
- Decision-tree leaves need not be pure; depth, sample-count and gain thresholds can stop growth earlier.
- The response vector in linear regression is in `R^n`, not `R^d`.
- The normal equation includes its rank condition; the pseudoinverse or regularisation is used when the Gram matrix is singular.
- Logistic loss for labels in `{-1,+1}` uses `log(1 + exp(-y z))`.
- Gradient descent evaluates the gradient at the current iterate, not at the unknown next iterate.
- SVM constraints use a consistent intercept, slack variables and label convention. The dual includes the equality constraint when an intercept is present.
- Bias, variance and irreducible noise are separated. Bias is not called irreducible error.
- The `1/K` variance reduction for averaging is limited to independent base learners; the correlated formula is also given.
- `L_1` non-differentiability is stated coordinate-wise, and `0 < p < 1` penalties are distinguished from norms.
- `L_2` regularisation is described as encouraging a smaller coefficient norm, without claiming that every ridge coefficient decreases monotonically under correlated features.
- Gaussian MLE retains the sum of squared residuals.
- Validation error is not presented as an unbiased final estimate after the same validation set has selected a model.
- Cross-validation is described as estimating performance for fits trained on `(K-1)/K` of the data.
- The F1 score is `2PR/(P+R) = 2TP/(2TP+FP+FN)`.
- Euclidean distance is the square root of the self-inner-product of a difference vector, not a generic dot product.
- PCA directions are uncorrelated under the sample covariance model; orthogonality is not equated with statistical independence.
- LDA directions are defined through between-class and within-class scatter, without claiming ordinary Euclidean orthogonality in general.
- Resampling and SMOTE are restricted to training data or training folds. Validation and test distributions remain untouched.
- Bag-of-Words is a fixed-vocabulary count, frequency or binary vector, not one one-hot word vector.
- Softmax has a Jacobian; the gradient simplifies to `p-y` only after composition with cross-entropy.
- Elementwise activation notation is restricted to hidden layers; Softmax is treated as a vector-coupled output transformation.
- Ordinary binary cross-entropy is not described as a remedy for class imbalance.
- Backpropagation is described as storing and reusing forward values, not avoiding intermediate values.
- ReLU has derivative 1 on the positive half-line and 0 on the negative half-line; it can produce inactive units.
- CNN operations include the channel sum and bias. The operation used in most libraries is cross-correlation unless the kernel is flipped.
- RNN parameters are shared across time steps and updated during optimisation.
- Pooling is described as downsampling and introducing limited local invariance, not as a detector by itself.
- Linear autoencoders are related to PCA only under stated conditions. Compression still requires a decoder when reconstruction is needed.
- An undercomplete bottleneck is treated as a capacity constraint, not as an unconditional guarantee of information loss or useful representation; exact reconstruction can remain possible on lower-dimensional data support.

## Editorial decisions

- Mathematical derivations are retained. Long derivations appear after their assumptions and motivation instead of being removed.
- Source screenshots are not embedded. Diagrams are redrawn as vector graphics.
- The training-workflow figure places validation or cross-validation inside the training data, the tree-growth figure respects pre-pruning conditions, and the K-means centroid markers are the exact means of the displayed samples.
- The guide contains no conversational checks, recap prompts, motivational slogans or exam-coaching dialogue.
- Historical background, software installation and framework-specific code are outside the source scope and are not added.
