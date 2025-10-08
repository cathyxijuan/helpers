#' Simulate a dataset and fit a linear regression model
#'
#' This helper simulates a simple linear regression dataset and fits a model
#' using `lm`. The function returns both the simulated data and the fitted
#' model so that you can inspect the coefficients, fitted values, or residuals.
#'
#' @param n Integer number of observations to simulate. Defaults to 100.
#' @param beta0 Numeric intercept used in the data-generating process. Defaults
#'   to 2.
#' @param beta1 Numeric slope used in the data-generating process. Defaults to
#'   0.5.
#' @param sigma Standard deviation of the Gaussian noise added to the outcome.
#'   Defaults to 1.
#' @param seed Optional integer seed to ensure reproducibility. If `NULL`, the
#'   current random seed is used.
#'
#' @return A list containing two elements: `data`, a data frame with the simulated
#'   predictor `x` and outcome `y`, and `model`, the `lm` object produced by
#'   fitting `y ~ x` to the simulated data.
#' @export
#'
#' @examples
#' result <- simulate_regression(n = 50, beta0 = 1, beta1 = 0.75, sigma = 1)
#' result$model
simulate_regression <- function(n = 100, beta0 = 2, beta1 = 0.5, sigma = 1,
                                seed = NULL) {
  if (!is.null(seed)) {
    stopifnot(length(seed) == 1)
    set.seed(seed)
  }

  stopifnot(length(n) == 1, is.numeric(n), n > 1)
  stopifnot(length(beta0) == 1, is.finite(beta0))
  stopifnot(length(beta1) == 1, is.finite(beta1))
  stopifnot(length(sigma) == 1, is.finite(sigma), sigma > 0)

  n <- as.integer(n)
  x <- stats::rnorm(n)
  eps <- stats::rnorm(n, sd = sigma)
  y <- beta0 + beta1 * x + eps

  data <- data.frame(x = x, y = y)
  model <- stats::lm(y ~ x, data = data)

  list(data = data, model = model)
}
