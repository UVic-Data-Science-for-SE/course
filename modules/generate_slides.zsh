#!/bin/zsh

# # Find all Markdown files in the directory
# markdown_files=(**/*.md)
# echo $markdown_files
# # Loop through each file
# for file in $markdown_files; do
#   # Check if the file contains the string "marp: true"
#   if grep -q "marp: true" "$file"; then
#     # If it does, call the marp command line utility with the file as an argument
#     marp --pdf --allow-local-files --pdf-outlines --author 'Neil Ernst' "$file"
#     file_name=$(basename "$file")
#     mv "${file:r}.pdf" "/Users/nernst/Documents/teaching/DataScience4SE/modules/slide_pdfs/${file_name:r}.slides.pdf"
#   fi
# done

# Find all Quarto files in the directory
quarto_files=(**/*.qmd)
echo $quarto_files
# Loop through each file
for file in $quarto_files; do
    file_name=$(basename "$file")
    quarto render "$file"  
    # mv -f "${file:r}.html" "${file:r}_files" "slide_pdfs/"
done