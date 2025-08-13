### Source Localization

Signals have different propagation speeds depending on their nature and environmental characteristics. As a result of propagation, every sensor (if their positions are different) will record delayed signals. Direction of arrival of the signal can be estimated by using these delays.

The delay between two signals can be determined using the cross-correlation. The cross-correlation between two signals \(S\_1\) and \(S\_2\) described as (1). Maximum amplitude value of cross-correlation gives us the lag \((\Delta t)\) between two input signals.

\begin{equation}
R\_{S\_1 S\_2} = \mathrm{E}[S\_1 S\_2^\*] = \int \int S\_1 S\_2 f\_{S\_1 S\_2}(S\_1,S\_2) dS\_1 dS\_2
\end{equation}

Image crosscor.png XXX
Cross-correaltion between two sinusoids.

As mentioned the time difference is related with propagation speed \((V)\) and distance so, if the propagation speed and time difference are known with (2) the difference of distance along the wave path \((\Delta x)\) can be found.

\begin{equation}
\Delta x=V\times \Delta t
\end{equation}

Image local1.png XXX

Image local2.png XXX

If we have limited number of sensors it is possible to couple them to estimate \(\Delta x\) distances and locate source. But if we have \(n\) sensors, calculation process will be more complex. To ease the process and obtain more generalized solution, distance from \(n\) sensors to source can be determined with \(n\) different equation. Assume we have identical three sensors and one signal source at \((x\_s,y\_s)\) distances from sensor can be defined by using three nonlinear equations.

\begin{equation}
\begin{split}
x\_s^2+(y\_s-y\_1)^2=(r+a)^2 \\
x\_s^2+y\_s^2=(r+b)^2 \\
(x\_s-x\_3)^2+y\_s^2=(r+c)^2
\end{split}
\end{equation}

This equation set can be solved by using Newton-Raphson method. With this method, coordinates of source \((x\_s,y\_s)\) estimated iteratively using Jacobian matrix (3).

\begin{equation}
J=
\left[ {\begin{array}{ccc}
2x\_s & 2y\_s-2y\_1 & -2r-2a \\
2x\_s & 2y\_s & -2r-2b \\
2x\_s-2x\_3 & 2y\_s & -2r-2c
\end{array}} \right]
\end{equation}

MATLAB implementation of this method can be downloaded from [here](https://github.com/egecetin/source_localization/releases/tag/v1.0)
(Non-commercial use only). This application reads data from analog to digital converters (ADC) belongs
to National Instruments in real time and every time step estimates the source location.

Image localization_init.png XXX
Screenshot of initializer of MATLAB application.

Image localization.png XXX
Real-time source localization of application.
