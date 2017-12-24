for entry in *.ml *.mli
do
  ocp-indent "$entry" > tmp
  mv tmp "$entry"
done
