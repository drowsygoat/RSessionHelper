#!/usr/bin/env Rscript

# Preamble
##########################################################################
args <- commandArgs(trailingOnly = TRUE)

require(SmoothR, quietly = TRUE)

# Initialize session and set working directory
################################################################################
InitNow()

# Load command line arguments
################################################################################
output_dir <- args[1]
script_name <- args[2]
suffix <- args[3]
timestamp <- args[4]
threads <- as.integer(args[5])
something <- as.character(args[6])

cat(sprintf("Configuration:\n- Output directory: %s\n- Script name: %s\n- Suffix: %s\n- Timestamp: %s\n- Threads: %d\n- Extra parameter: %s\n",
            output_dir, script_name, suffix, timestamp, threads, something))

# Some analysis
################################################################################
require(ggplot2, quietly = TRUE)

Sys.sleep(30)  # Simulated delay for process separation

checkpoint("Start of Analysis")

# Example plotting
pdf(file.path(output_dir, "plot1.pdf"))
plot(mpg)
dev.off()

checkpoint("Analysis Complete")
Sys.sleep(30)

# Prime number calculation function
is_prime <- function(num) {
  if (num < 2) return(FALSE)
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) return(FALSE)
  }
  return(TRUE)
}

find_primes <- function(limit) {
  primes <- c()
  for (num in 2:limit) {
    if (length(primes) >= limit) break
    if (is_prime(num)) primes <- c(primes, num)
  }
  return(primes)
}

prime_numbers <- find_primes(200)
checkpoint("First 20 prime numbers calculated.")

# Error handling with SafeExecute
SafeExecute({ I_have_no_mouth_and_I_must_scream })

Sys.sleep(30)
# Save session and cleanup
################################################################################
SaveNow()
Sys.sleep(30)
# Properly exit script
################################################################################
quit(status = 0)