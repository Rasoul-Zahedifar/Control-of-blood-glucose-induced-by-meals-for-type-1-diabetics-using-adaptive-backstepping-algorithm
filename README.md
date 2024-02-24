<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#Reference">Reference</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<div align="justify"> In this research, we propose an adaptive backstepping method for the regulation of blood glucose levels induced by meals in type-1 diabetic patients. Leveraging a backstepping controller to manage blood glucose levels and an adaptive algorithm to compensate for meal-induced fluctuations, our approach is evaluated through two distinct case studies: one involving actuator faults and the other simulating a brief loss of control input during treatment. Assessing the impact of unannounced meals three times a day on a nominal patient in both cases, we argue that adaptive backstepping emerges as the preferred control method. Stability is rigorously proven using Lyapunov theory, and the obtained results demonstrate the stability of the adaptive backstepping controller, efficiently tracking the desired glucose concentration. </div>

![comgit](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41598-022-16535-2/MediaObjects/41598_2022_16535_Fig1_HTML.png?as=webp)

<div align="justify"> Building upon the Bergman Minimal model of glucose-insulin dynamics in type-1 diabetics, we introduce two protocols aimed at achieving exponentially desired blood glucose trajectories, one through conventional backstepping and the other through our proposed adaptive backstepping method. Our analysis accounts for the influence of meals, three times daily, leading to a comparative evaluation to determine which method outperforms in controlling blood glucose levels for type-1 diabetic patients. To support our claim, we conduct two case studies, examining the controllers in the presence of actuator faults and assessing their performance when subjected to a brief loss of control input. Across all scenarios, adaptive backstepping consistently demonstrates its superiority, reinforcing its efficacy in regulating blood glucose levels in type-1 diabetic patients under diverse conditions. </div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

In order to apply the codes, you may need to follow the steps below:


<!-- PREREQUISITES -->
### Prerequisites

<div align="justify"> You need to install MATLAB and Simulink Version 2020b or newer ones. If you are using an older version of MATLAB, please let me know at rasoul.zahedifar75@gmail.com to provide you with a save as compatible to your version. </div>



<!-- INSTALLATION -->
### Installation

<div align="justify"> You need to run the file "runner_simulation" in each case study. Please notice that the controller gains could be chosen in this file too. </div>


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

<div align="justify"> The major codes are the adaptive backstepping controller desing. The plots are either MATLAB fig files (for openning the file, drag it to your MATLAB) or PNG files. The MATLAB fig files are vectorized where the more you zoom in to the figure, the more details you could see without loosing the quality of the figure. You can find out about these scenarios as they are expressed completely in the paper of this research, titled same as this repository's title. </div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

<div align="justify"> Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request </div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Rasoul Zahedifar - rasoul.zahedifar75@gmail.com

Ali Keymasi Khalaji - keymasi@khu.ac.ir

Github Link: [https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm](https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm)

Journal Link: [https://www.nature.com/articles/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm](https://www.nature.com/articles/s41598-022-16535-2)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- REFERENCE -->
## Reference

If you are interested in this work, please cite:

```
@ARTICLE{
  authors={Zahedifar, Rasoul and Keymasi Khalaji, Ali},
  journal={Scientific Reports},
  publisher={Nature}
  title={Control of blood glucose induced by meals for type-1 diabetics using an adaptive backstepping algorithm}, 
  year={2022},
  volume={12},
  pages={1-13},
  number=12228(2022),
  doi={10.1038/s41598-022-16535-2}
  }
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm.svg?style=for-the-badge
[contributors-url]: https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm.svg?style=for-the-badge
[forks-url]: https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm/network/members
[stars-shield]: https://img.shields.io/github/stars/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm.svg?style=for-the-badge
[stars-url]: https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm/stargazers
[issues-shield]: https://img.shields.io/github/issues/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm.svg?style=for-the-badge
[issues-url]: https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm/issues
[license-shield]: https://img.shields.io/github/license/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm.svg?style=for-the-badge
[license-url]: https://github.com/Rasoul-Zahedifar/Control-of-blood-glucose-induced-by-meals-for-type-1-diabetics-using-adaptive-backstepping-algorithm/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/rasoul-zahedifar
