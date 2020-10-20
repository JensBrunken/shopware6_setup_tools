#!/bin/bash
echo "[START] create adminuser"
mail=""
password=""
cat > adminUserList.$$ <<EOF

EOF
nbAdminUserList=$(wc -l adminUserList.$$ | cut -sf 1 -d ' ')
exec {id_nuclei}<./adminUserList.$$
declare -a adminUser
while read -ra adminUser -u "${id_nuclei}"; do
	adminUserName=${adminUser[0]}"."${adminUser[1]}
	UserMail=${adminUserName,,}"@"${mail}
	bin/console user:create --admin --email="${UserMail}" --firstName="${adminUser[0]}" --lastName="${adminUser[1]}" --password="${password}" --no-interaction "${adminUserName,,}"
done
exec {id_nuclei}<&-
rm adminUserList.$$

echo "[END] create adminuser..."
