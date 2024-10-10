#! /bin/sh

template_path=~/.dotfiles/tex/Template/
template_file=template.tex

show_help() {
  echo "Usage: ./$(basename $0) [-h] [-f filename] [-p path] [-c filename] [-g filename]"
  echo "Options:"
  echo "  -h            Display this message"
  echo "  -f            Create new tex file based on template.tex"
  echo "  -p            Create new tex project based on Template project"
  echo "  -c            Compile the latex file"
  echo "  -g            Generate pdf file for the latex file"
  echo ""
  echo "This script create for you a template for a file or a project."

  return 0
}

create_file() {
  cp ${template_path}${template_file} ./${1} && echo "File created."
  return 0
}

create_project() {
  cp -r ${template_path} ./${1} && echo "Project created."
  return 0
}

compile_file() {
  latex --output-directory=build ${1} && echo "Latex file compiled."
  return 0
}

generate_file() {
  pdflatex --output-directory=build ${1} && echo "PDF generated."
  return 0
}

while getopts ':hf:p:c:g:' OPTION; do
  case "$OPTION" in
    h)
      show_help;;
    f)
      arg_f="$OPTARG"
      create_file ${arg_f};;
    p)
      arg_p="$OPTARG"
      create_project ${arg_p};;
    c)
      arg_c="$OPTARG"
      compile_file ${arg_c};;
    g)
      arg_g="$OPTARG"
      generate_file ${arg_g};;
    ??)
      show_help;;
  esac
done

