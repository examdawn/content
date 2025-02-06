# Exam Dawn

## A simple Website for students to host study materials and useful reference content

### We welcome contributions.

>[!IMPORTANT]
> We are preparing this website for users to easily add more content through this Repository. If you have any doubts or issues, please file an issue in the issues tab or create a new post in the discussion window.  

## "Why 'Exam Dawn'?"

The main use for this website is for referring to notes and solutions at the last minute before exams. This usually happens during night time or early morning for most students - our old website (titled bca-students) was a placeholder till we could come up with a better name.

Content currently available for:
- BCA
    - [3rd Semester](NEP2020/2024/BCA/3rdsem/index.md)

## Expected Folder structure and format example
- NEP2020 - this is your syllabus scheme
    - 2024 - this is the semester year(for now, put everything in this folder)
        - BCA - this is your course
            - 2rdsem - this is your semester folder

## Expected Subfolder structure and format example
- java - this is your subject folder name, use shorthand
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
[Follow these guidelines while contributing!](https://github.com/examdawn/content/blob/contents/.github/CONTRIBUTING.md)

## Copyright and More
For initiating takedowns, please read [the takedown page](takedown.md)
