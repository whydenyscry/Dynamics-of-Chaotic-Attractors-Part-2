# Dynamics of Chaotic 3D Attractors: Part 2

This is a sequel to my repository [Dynamics of Chaotic 3D Attractors: Part 1](https://github.com/whydenyscry/Dynamics-of-Chaotic-Attractors-Part-1) on which I have reached the limit for using mathematical expressions. This repository will also only consider 3D attractors.

The plots are also available on Pinterest and Behance:

<a href="https://www.pinterest.com/whydenyscry/when-math-and-art-came-face-to-face/" target="_blank"><img src="https://brandslogos.com/wp-content/uploads/images/large/pinterest-logo-black-and-white-4.png" style="width: 50px; height: 50px;"></a>
<a href="https://www.behance.net/whydenyscry" target="_blank"><img src="https://www.iconsdb.com/icons/preview/white/behance-5-xxl.png" style="width: 50px; height: 50px;"></a>

## Relevant Repositories:
- [Dynamics of Chaotic 3D Attractors: Part 1](https://github.com/whydenyscry/Dynamics-of-Chaotic-Attractors-Part-1)
- [Dynamics Of Hyperchaotic High-Dimensional Attractors](https://github.com/whydenyscry/Dynamics-of-Hyperchaotic-Attractors)


## The Sambas—Benkouider—Kaçar Attractor
**Reference:**\
[Sambas, A., Benkouider, K., Kaçar, S., Ceylan, N., Vaidyanathan, S., Sulaiman, I. M., Mohamed, M. A., Ayob, A. F. M., & Muni, S. S. (2024). Dynamic Analysis and Circuit Design of a New 3D Highly Chaotic System and its Application to Pseudo Random Number Generator (PRNG) and Image Encryption. SN Computer Science, 5(4).](https://doi.org/10.1007/s42979-024-02766-9)

$$
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x\right) + yz,	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = x\left(\beta-z\right)-1, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = x^2+xz-\varsigma z,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma
\end{bmatrix} = \begin{bmatrix}
	20\\
	50\\
	10
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Sambas_Benkouider_Kacar_Attractor.png"/>
</p>

## The Xu—Wang Attractor
**Reference:**\
[Xu, Y., & Wang, Y. (2014). A new chaotic system without linear term and its impulsive synchronization. Optik - International Journal for Light and Electron Optics, 125(11), 2526–2530.](https://doi.org/10.1016/j.ijleo.2013.10.123)

$$ 
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = \ln\left(\alpha+\mathrm{e}^{y-x}\right)	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = xz, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = \beta -xy,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta
\end{bmatrix} = \begin{bmatrix}
	0.1\\
	0.25
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Xu_Wang_Attractor.png"/>
</p>

## The Sanum—Srisuchinwong Attractor
**Reference:**\
[Sanum, W., & Srisuchinwong, B. (2012). Highly Complex Chaotic System with Piecewise Linear Nonlinearity and Compound Structures. Journal of Computers, 7(4).](https://doi.org/10.4304/jcp.7.4.1041-1047)

$$ 
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = y-x	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = -z\tanh x, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = -\alpha + xy +|y|,
\end{cases}
$$

$$
\alpha = 60.
$$

<p align="center">
  <img src="images_png/The_Sanum_Srisuchinwong_Attractor.png"/>
</p>

## The Zhou—Wang—Wu Attractor
**Reference:**\
[Zhou, W., Wang, Z., Wu, M., Zheng, W., & Weng, J. (2015). Dynamics analysis and circuit implementation of a new three-dimensional chaotic system. Optik - International Journal for Light and Electron Optics, 126(7-8), 765–768.](https://doi.org/10.1016/j.ijleo.2015.02.029)

$$ 
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha y	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = -z\text{sgn}\left(x\right) - \varsigma y, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = \beta x^2 -1,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma
\end{bmatrix} = \begin{bmatrix}
	14\\
	3\\
	1
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Zhou_Wang_Wu_Attractor.png"/>
</p>

## The Kingni—Pham—Jafari Attractor
**Reference:**\
[Kingni, S. T., Pham, V.-T., Jafari, S., Kol, G. R., & Woafo, P. (2016). Three-Dimensional Chaotic Autonomous System with a Circular Equilibrium: Analysis, Circuit Implementation and Its Fractional-Order Form. Circuits, Systems, and Signal Processing, 35(6), 1933–1948.](https://doi.org/10.1007/s00034-016-0259-x)

$$ 
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = z	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = z^3 + z^2 + 3xz, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = x^2+y^2-a^2-4yz^2,
\end{cases}
$$

$$
\alpha=0.991.
$$

<p align="center">
  <img src="images_png/The_Kingni_Pham_Jafari_Attractor.png"/>
</p>

## The Vaidyanathan Attractor
**Reference:**\
[Vaidyanathan, S. (2015). Analysis, properties and control of an eight-term 3-D chaotic system with an exponential nonlinearity. International Journal of Modelling, Identification and Control, 23(2), 164.](https://doi.org/10.1504/ijmic.2015.068871)

$$ 
\begin{cases}
	\frac{\mathrm{d}x}{\mathrm{d}t} = \alpha\left(y-x\right) + yz	\\
	\frac{\mathrm{d}y}{\mathrm{d}t} = \beta x - \varsigma xz, \\
	\frac{\mathrm{d}z}{\mathrm{d}t} = \mathrm{e}^{xy}-\delta z+x^2,
\end{cases}
$$

$$
\begin{bmatrix}
	\alpha\\
	\beta\\
	\varsigma\\
	\delta
\end{bmatrix} = \begin{bmatrix}
	11\\
	40\\
	0.4\\
	9
\end{bmatrix}.
$$

<p align="center">
  <img src="images_png/The_Vaidyanathan_Attractor.png"/>
</p>
