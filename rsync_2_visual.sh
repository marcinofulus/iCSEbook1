#!/bin/bash

rsync -avz  ./SagewFizyce/build/html/* visual.icse.us.edu.pl:www/visual/SagewFizyce/
rsync -avz  ./AlgebraTrial/build/html/* visual.icse.us.edu.pl:www/visual/LA/
rsync -avz  ./MechanikaStosowana/build/html/* visual.icse.us.edu.pl:www/visual/MS/
rsync -avz  ./MetodyMatematycznewBiologii/build/html/* visual.icse.us.edu.pl:www/visual/MMB/
rsync -avz  ./ProcesyNieliniowewBiologii/build/html/* visual.icse.us.edu.pl:www/visual/PNB/
rsync -avz  ./Warsztaty/build/html/* visual.icse.us.edu.pl:www/visual/Warsztaty/

