#!/bin/bash

# Save the initial working directory
initial_pwd=$(pwd)

# Navigate to the specified directory
base_dir="NEP2020/2024"
cd "$base_dir" || { echo "Base directory not found"; exit 1; }

# Initialize XML structure
xml_output="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
xml_output+="<sidebar>\n"  # Start with a root element for the sidebar

# Loop through each folder in the base directory
for folder in */; do
    # Navigate into the folder
    cd "$folder" || { echo "Directory $folder not found"; continue; }

    # Get the current folder name (e.g., BCA)
    folder_name=$(basename "$PWD")

    # Add a program node
    xml_output+="  <program name=\"$folder_name\">\n"

    # Loop through semester folders
    for sem_folder in [0-9]*sem; do
        # Extract the semester number
        sem_number=${sem_folder:0:1}  # Get the first character (1, 2, 3, etc.)
        
        # Determine the year based on the semester number
        year=$(( (sem_number + 1) / 2 ))  # 1st and 2nd sem -> 1st year, 3rd and 4th sem -> 2nd year, etc.
        
        # Create a year node
        xml_output+="    <year number=\"$year\">\n"
        
        # Add semester node
        xml_output+="      <semester name=\"$sem_folder\">\n"
        
        # Loop through each folder inside the semester folder
        for subject_folder in "$sem_folder"/*; do
            if [[ -d "$subject_folder" ]]; then  # Check if it's a directory
                # Check if index.md exists in the subject folder
                if [[ -f "$subject_folder/index.md" ]]; then
                    # Read the first line of index.md for subject name
                    subject_name=$(head -n 1 "$subject_folder/index.md" | sed 's/^# //;s/\r//g')
                    # Get the relative path to index.md
                    subject_path=$(basename "$subject_folder")/index.md
                    
                    # Add subject with name attribute and path as content
                    xml_output+="        <subject name=\"$subject_name\">$subject_path</subject>\n"
                fi
            fi
        done
        
        # Close semester node
        xml_output+="      </semester>\n"
        
        # Close year node
        xml_output+="    </year>\n"
    done

    # Close program node
    xml_output+="  </program>\n"

    # Navigate back to the base directory
    cd "$initial_pwd" || { echo "Failed to return to base directory"; exit 1; }
done

# Close the main XML node
xml_output+="</sidebar>"

# Save the XML output to sidebar.xml in the initial working directory
echo -e "$xml_output" > "$initial_pwd/sidebar.xml"
echo "XML file sidebar.xml has been created successfully in $initial_pwd."
