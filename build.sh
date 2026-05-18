#variables
PACKAGEDIR=x86_64

# cleans up
rm PersonalRepo.db PersonalRepo.db.tar.gz PersonalRepo.files PersonalRepo.files.tar.gz
rm -rf pkgbuilds/*/pkg
rm -rf pkgbuilds/*/src
rm -rf pkgbuilds/*/*.tar.xz

# builds packages and moves them to 
ls -R | grep -E PKGBUILD | xargs -I {} sh -c 'cd $(dirname {}) && makepkg -m && mv *.pkg.tar.zst ../$(basename $(dirname {}))'
ls -R | grep -E *.pkg.tar.zst | xargs -I {} sh -c 'mv {} ../$(basename $(dirname {}))'

# remakes db files
repo-add PersonalRepo.db.tar.gz ./x86_64/*.pkg.tar.zst