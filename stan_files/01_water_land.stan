data {
    int N; // Number of observaiton
    int y[N]; // A yes or not outcome
}

parameters {
   real<lower=0,upper=1> p; # Our probability parameter
}

model {
    p ~ uniform(0, 1); // prior
    y ~ bernoulli(p); # Our Model
}
