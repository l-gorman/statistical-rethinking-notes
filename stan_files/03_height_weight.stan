data {
    int < lower = 1 > N; // Sample size
    vector[N] H; // vector of heights
    vector[N] W; // vector of weights (our y)
}

parameters {
    real alpha; // Intercept
    real beta; // Slope
    real < lower = 0 > sigma; // Error SD
}

model {
    W ~ normal(alpha + beta * H, sigma);
}


generated quantities {
  array[N] real W_rep = normal_rng(alpha + beta * H, sigma);
  vector[N] H_rep = H;
}
