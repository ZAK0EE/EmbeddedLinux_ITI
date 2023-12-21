username="ziad"
groupname="ziad"

# Validates command usage
if [ $# -ne 2 ]
then
	echo "Usage: '$0' username groupname"
	exit 1
fi

# Add user if not found
if [[ $( cat /etc/passwd | grep $1 | cut -d: -f1) = $1 ]]
then
    echo "This user exists:"
    echo $( cat /etc/passwd | grep $1)
else
     useradd $1
    echo $( cat /etc/passwd | grep $1)
fi

# Add group if not found
if [[ $( cat /etc/group | grep $2 | cut -d: -f1) = $2 ]]
then
    echo "This user exists:"
    echo $( cat /etc/group | grep $2)
else
     groupadd $2
    echo $( cat /etc/group | grep ^$2)
fi

