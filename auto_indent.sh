for entry in *.ml
do
  ocp-indent "$entry" > tmp
  mv tmp "$entry"
done
