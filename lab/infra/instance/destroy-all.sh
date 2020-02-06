for i in `find ./ | grep -i "hcl$"`;
do 
  dir=$(greadlink -f $i | sed 's/terragrunt.hcl//g')
  cd $dir
  aws-vault exec huydinh-tiki -- terragrunt destroy || true
  cd -
  # pwd
done
