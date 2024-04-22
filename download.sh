FILE=$1

if [ $FILE == 'CelebA' ]
then
#This zip which was attached to this URL so this doesn't work so we can change the URL to a new one or even add more new image datasets
    # URL=https://www.dropbox.com/s/3e5cmqgplchz85o/CelebA_nocrop.zip?dl=0
    # ZIP_FILE=./data/CelebA.zip
    pass

elif [ $FILE == 'LSUN' ]
then
#Same for this URL too
    # URL=https://www.dropbox.com/s/zt7d2hchrw7cp9p/church_outdoor_train_lmdb.zip?dl=0
    # ZIP_FILE=./data/church_outdoor_train_lmdb.zip
    pass
else
    echo "Available datasets are: CelebA and LSUN"
    exit 1
fi

mkdir -p ./data/
wget -N $URL -O $ZIP_FILE
unzip $ZIP_FILE -d ./data/

if [ $FILE == 'CelebA' ]
then
    mv ./data/CelebA_nocrop ./data/CelebA
fi

rm $ZIP_FILE
