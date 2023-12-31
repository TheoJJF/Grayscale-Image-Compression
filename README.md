# Grayscale-Image-Compression

This repository contains a MATLAB script that both grayscales and compresses an image using low rank approximation and singular value decomposition. 

## Getting Started

### Cloning the repository
```
git clone https://github.com/TheoJJF/Grayscale-Image-Compression.git
```

### Ensuring MATLAB is installed
Since this repository contains MATLAB scripts, MATLAB must be installed. For steps on purchasing/installing MATLAB, please follow [MathWorks Documentation](https://www.mathworks.com/help/install/install-products.html).

### Running the scripts
**Opening MATLAB**
```
matlab -nosplash -nodesktop 
```

> Note: The `-nodisplay` flag can be used if you are not planning to use a graphical display.

**Running either script**
```
run('image_compression.m')
run('approximation_sample.m')
```

> Note: `image_compression.m` does not require a graphical display as the image is automatically saved as a .jpg file into your current working directory. That being said, it is suggested that you use the graphical display as you will be able to see a preview of the result.

**Exiting MATLAB**
```
exit
```


## Low Rank Approximation
### What is low rank approximation?
To simply put, a low rank approximation of a $m\times n$ matrix $A$ is represented by the product of $2$ lower rank matrices where the difference between the original matrix and the product are minimized. 

## Singular Value Decomposition
### What is singular value decomposition?
A singular value decomposition of a $m\times n$ matrix $A$ can be deconstructed to $3$ simple matrices defined below $$A=U\Sigma V^T$$ where:
1. $U$ is a $m\times m$ orthogonal matrix.
1. $\Sigma$ is an $m\times n$ diagonal matrix with nonnegative entries, with the diagonal entries sorted from high to low.
1. $V$ is a $n\times n$ orthogonal matrix.

### Why use singular value decomposition?
To best approximate our $m\times n$ matrix $A$, we can use singular value decomposition to get the lower rank matrices we need. Suppose our target rank is $k$, we can take the first $k^{th}$ columns of each of the $3$ resulting matrices from our singular value decomposition to be our low rank approximation.

## Image Compression and Low Rank Approximation
### How is low rank approximation applied here?
We can represent the pixel intensity of our images to be the entries of $A$, where $m,n$ are the dimensions of our image. Following this, we use singular value decomposition and set a target rank $r$ for low rank approximation. After calculations, the resulting compressed image will be dependent of the value of $r$.

### Example Results
**Side by side comparison**
<p float="left">
  <img src=samples/image1.jpg width="45.8%">
  <img src=samples/rank_100_approx_result.jpg width="51.3%">
</p>

> Original image(left), rank 100 approximation(right).
> 
> Note: Setting the value of $r$ to around $100$ to $250$ is enough to give a good approximation of images; however, feel free to test out approximation of different target ranks with the [approximation sample script](approximation_sample.m).
