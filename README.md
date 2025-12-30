# Why ?
I honestly:
- Don't like the process of adjusting the spacing between the elements of the cv, for example when a new one is added.
- Don't like the estetics of a CV written entirely with an office software (alternatives to the softwares that fall under the complaint above), you lack on freedom while positioning the elements.

For the above reasons I have adopted a solution within wich:
- Rules (for elements styling) are define once.
- Elements are defined with a styling rule assigned. 
- The document "magically" take a shape.

# How to setup the project
## Locally
1. Install Typst compiler. The process is well cocumented on the [Typst github page](https://github.com/typst/typst).
2. Install the font used in the project. The font can be downloaded from its [Google font page](https://fonts.google.com/share?selection.family=Source+Code+Pro:ital,wght@0,200..900;1,200..900). Once extracted, the `.zip`, the instruction on how to install it on your machine can be found on the `README.md`.
3. Clone the repository
```bash
git clone https://github.com/Riccardo-Gottardi/cv-template
```
4. Add a `main.typ` (or `<whatever you want to call your file>.typ`). Write your cv in there (you can find an example in `sample_main.typ`, the result of the compilation of `sample_main.typ`, so the resulting pdf, is `sample_main.pdf`).
5. Compile your file. Explanation on how to do it can be find on the [Typst github page](https://github.com/typst/typst). The simplest whay is:
```bash
typst compile main.typ
```

