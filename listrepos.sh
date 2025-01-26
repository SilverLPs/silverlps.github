VAR_SOURCE=""
VAR_DESTINATION=""
VAR_PAT=""

for arg in "$@"; do
  case $arg in
    SOURCE=*)
      VAR_SOURCE="${arg#*=}"
      shift
      ;;
    DESTINATION=*)
      VAR_DESTINATION="$(realpath "${arg#*=}")"
      shift
      ;;
    PAT=*)
      VAR_PAT="${arg#*=}"
      shift
      ;;
  esac
done

echo "MODULE INFO:"
echo
echo "Module:      silverlps.github.listrepos"
echo "Path:        $(pwd)"
echo "SOURCE:      $VAR_SOURCE"
echo "DESTINATION: $VAR_DESTINATION"
if [[ -n "$VAR_PAT" ]]; then
  echo "PAT:         MD5=$(echo -n $VAR_PAT | md5sum | awk '{print $1}')"
else
  echo "PAT:         "
fi
echo

export GH_TOKEN="$VAR_PAT"
gh repo list "$VAR_SOURCE" --json url --template "{{range .}}{{.url}}{{\"\n\"}}{{end}}" | sort > "$VAR_DESTINATION"
export GH_TOKEN=""
unset GH_TOKEN
cat "$VAR_DESTINATION"
