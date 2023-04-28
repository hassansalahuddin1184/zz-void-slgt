# Introduction:
Some Unit and Performance tests done on React storefront along with linters and SAST tools.

## SAST Tool Contrast Scan
For SAST tool we have used contrast scan. Because it was easy to configure and our project was react store front have .js files so Contrast scan easily support javascript files. For configuration steps we have used it in our CLI:

1-npm install --location=global @contrast/contrast is used to install it.

2-contrast auth is used to authorize your github.

3-contrast scan -f ReactStoreFront.zip this commands take .zip files for javascript application.

4-Contrast scan than scans the files and generate a report by providing details of the project and what issues it have.

5-A report file name Contrast scan is added to github for further details.

