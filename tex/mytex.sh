#! /bin/sh

template_path=~/.dotfiles/tex/Template/
template_file=template.tex

show_help() {
  echo "Usage: ./$(basename $0) [-h] [-f argument] [-p argument]"
  echo "Options:"
  echo "  -h            Display this message"
  echo "  -f            Create new tex file based on template.tex"
  echo "  -p            Create new tex project based on Template project"
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

while getopts ':hf:p:' OPTION; do
  case "$OPTION" in
    h)
      show_help;;
    f)
      arg_f="$OPTARG"
      create_file ${arg_f};;
    p)
      arg_p="$OPTARG"
      create_project ${arg_p};;
    ??)
      show_help;;
  esac
done

