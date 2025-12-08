# Why ?
I honestly:
- Don't like the process of adjusting all the spacing between the element of the cv, when a new one is adde (in software such as canva).
- Don't like the estetics of a CV written entirely on an office software, you lack on freedom while positioning of the element.
For the above reasons I have adopted a solution whitin wich you define once the rules on how the different type of element should be displayed and then use those roles to see your document take a shape.

# How to setup the project
## Locally
1. Install Typst compiler. The process is well cocumented on the ![Typst github page](https://github.com/typst/typst)
2. Install the font used in the project. The font can be downloaded from its ![Google font page](https://fonts.google.com/share?selection.family=Source+Code+Pro:ital,wght@0,200..900;1,200..900). Once extracted, the .zip, the instruction on how to install it on your machine can be found on the README.md.
3. Clone the repository
```bash
git clone https://github.com/Riccardo-Gottardi/cv-template
```
4. Add a main.typ (or <whatever you want to call your file>.typ). Write your cv in there (you can find an example in sample_main.typ, the result of the compilation of sample_main.typ, so the resulting pdf is sample_main.pdf).
5. Compile your file. Explanation on how to do it can be find on the ![Typst github page](https://github.com/typst/typst). The simplest whay is:
```bash
typst compile main.typ
```

