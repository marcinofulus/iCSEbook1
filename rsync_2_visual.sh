#!/bin/bash


cd AlgebraTrial
make html
cd ..
rsync -avz  ./AlgebraTrial/build/html/* visual.icse.us.edu.pl:www/visual/LA/

cd ProcesyNieliniowewBiologii
make html
cd ..
rsync -avz  ./ProcesyNieliniowewBiologii/build/html/* visual.icse.us.edu.pl:www/visual/PNB/


cd iCSE_main
make html
cd ..
rsync -avz  ./iCSE_main/build/html/* visual.icse.us.edu.pl:www/visual/iCSE_main/

cd Warsztaty
make html
cd ..
rsync -avz  ./Warsztaty/build/html/* visual.icse.us.edu.pl:www/visual/Warsztaty/


# rsync -avz  ./SagewFizyce/build/html/* visual.icse.us.edu.pl:www/visual/SagewFizyce/
# rsync -avz  ./MechanikaStosowana/build/html/* visual.icse.us.edu.pl:www/visual/MS/
# rsync -avz  ./MetodyMatematycznewBiologii/build/html/* visual.icse.us.edu.pl:www/visual/MMB/

#
