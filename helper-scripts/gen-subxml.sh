#!/bin/bash

# Save the initial working directory
initial_pwd=$(pwd)

# Navigate to the specified directory
base_dir="./NEP2020/2024"
cd "$base_dir" || { echo "Base directory not found"; exit 1; }
base_path=$(pwd)

# Initialize XML structure
xml_output="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
xml_output+="<sidebar>\n"

# Loop through each folder in the base directory
for folder in */; do
    folder=${folder%/}  # Remove trailing slash
    echo "Processing folder: $folder in $base_path"
    
    if [ ! -d "$folder" ]; then
        echo "Not a directory: $folder"
        continue
    fi

    cd "$base_path/$folder" || { 
        echo "Cannot enter directory: $base_path/$folder"
        continue 
    }

    # Add program node
    xml_output+="  <program name=\"$folder\">\n"

    # Loop through semester folders
    for sem_folder in [0-9]*sem/; do
        [ -d "$sem_folder" ] || continue
        sem_folder=${sem_folder%/}
        
        # Extract semester number and calculate year
        sem_number=${sem_folder:0:1}
        year=$(( (sem_number + 1) / 2 ))
        
        # Create year and semester nodes
        xml_output+="    <year number=\"$year\">\n"
        xml_output+="      <semester name=\"$sem_folder\">\n"
        
        # Process subjects
        for subject_folder in "$sem_folder"/*/; do
            [ -d "$subject_folder" ] || continue
            subject_folder=${subject_folder%/}
            
            if [ -f "$subject_folder/index.md" ]; then
                subject_name=$(head -n 1 "$subject_folder/index.md" | sed 's/^# //;s/\r//g')
                    # Get the relative path to index.md
                subject_path=$(basename "$subject_folder")/index.md
                    
                    # Add subject with name attribute and path as content
                xml_output+="        <subject name=\"$subject_name\">$subject_path</subject>\n"
            fi
        done
        
        # Close semester node
        xml_output+="      </semester>\n"
        
        # Close year node
        xml_output+="    </year>\n"
    done

    xml_output+="  </program>\n"
    cd "$base_path" || exit 1
done

# Close XML and save
xml_output+="</sidebar>"
echo -e "$xml_output" > "$initial_pwd/sidebar.xml"
echo "XML file sidebar.xml has been created successfully in $initial_pwd"