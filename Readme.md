# BCA Students

## A simple Website for students to host study materials and useful reference content

Content available for:
- BCA
    - [3rd Semester](NEP2020/2024/BCA/3rdsem/index.md)
        - [Database Management System](NEP2020/2024/BCA/3rdsem/dbms/index.md)
        - [Computer Communications and Networks](NEP2020/2024/BCA/3rdsem/ccn/index.md)
        - [Additional English](NEP2020/2024/BCA/3rdsem/addEng/index.md)
        - [Indian Constitution](NEP2020/2024/BCA/3rdsem/ic/index.md)
        - [C# and DotNet Tools](NEP2020/2024/BCA/3rdsem/cs/index.md)
        - [Social Media Marketing](NEP2020/2024/BCA/3rdsem/smm/index.md)

## Expected Folder structure and format example
- NEP2020 - this is your syllabus scheme
    - 2024 - this is the semester year
        - BCA - this is your course
            - 3rdsem - this is your semester folder

## Expected Subfolder structure and format example
- cs - this is your subject folder name, use shorthand
    - assignments
        - index.md
    - lab
        - index.md
    - solved
        - index.md
    - assignment.md - this one links to your subject's assignments index.md
    - solved.md - this one links to your subject's solved questions index.md
    - notes.md - this has a link to faculty notes
    - index.md (optional but helps you track content easily)


If you are in the semester folder, and have added this correctly, you can use scripts to generate assignment.md, lab.md and solved.md. If you use these scripts, remember to have the heading "\# Subject Name" for subject's index.md.

Before running the script, go to semester folder(eg NEP2020/2024/BCA/3rdsem/)
For assignment.md:
```bash
bash ../../../../helper-scripts/gen-assign.sh
```

For lab.md:
```bash
bash ../../../../helper-scripts/gen-lab.sh
```

For solved.md:
```bash
bash ../../../../helper-scripts/gen-solved.sh
```

## Contribution Guidelines
[Follow these guidelines while contributing!](https://github.com/bca-students/content/blob/main/.github/CONTRIBUTING.md)

## Copyright and More
For initiating takedowns, please read [the takedown page](takedown.md)
