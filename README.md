<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
# Grayscale-Image-Compression

This repository contains a MATLAB script that both grayscales and compresses an image using low rank approximation and singular value decomposition. 

## Getting Started

### Cloning the repository
```
git clone https://github.com/TheoJJF/Grayscale-Image-Compression.git
```

### Ensuring MATLAB is installed
Since this repository contains MATLAB scripts, MATLAB must be installed. For steps on purchasing/installing MATLAB, please follow [MathWorks Documentation](https://www.mathworks.com/help/install/install-products.html)

## Low Rank Approximation
### What is low rank approximation?
To simply put, a low rank approximation of a $m\times n$ matrix $A$ is represented by the product of $2$ lower rank matrices where their differences are minimized. 

## Singular Value Decomposition
### What is singular value decomposition?
A singular value decomposition of a $m\times n$ matrix $A$ can be deconstructed to $3$ simple matrices defined below $$A=U\Sigma V^T$$ where:
1. $U$ is a $m\times m$ orthogonal matrix.
1. $\Sigma$ is an $m\times n$ diagonal matrix with nonnegative entries, and with the diagonal entries sorted from high to low.
1. $V$ is a $n\times n$ orthogonal matrix.

### Why use singular value decomposition?
To best approximate our $m\times n$ matrix $A$, we can use singular value decomposition to get the lower rank matrices we need. Suppose our target rank is $k$, we can take the first $k^{th}$ columns of each of the $3$ resulting matrices from our singular value decomposition to be our low rank approximation.

## Image Compression and Low Rank Approximation
### How is low rank approximation applied here?
We can represent the pixel intensity of our images to be the entries of $A$, where $m,n$ are the dimensions of our image. Following this, we use singular value decomposition and set a target rank $r$ for low rank approximation. After calculations, the resulting image will be dependent of the value of $r$.

### Example Results
The following approximations are using the [sample image](samples/image1.jpg).
<p align="center">
  <img src=samples/image1_compression_example.jpg />
</p>

> Note: Setting the value of $r$ to around $100$ to $250$ is enough to give a good approximation of images; however, feel free the sample with approximation of different target ranks with the [approximation sample script](approximation_sample.m).