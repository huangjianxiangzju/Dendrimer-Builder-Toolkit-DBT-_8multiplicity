# Dendrimer-Builder-Toolkit-DBT-_8multiplicity
Dendrimer Builder Toolkit (DBT) with maximum of 8 multiplicity


The original script was downloaded from http://www.physics.iisc.ernet.in/~maiti/dbt/home.html

If you use this script in your publication, please cite their original paper:
http://onlinelibrary.wiley.com/doi/10.1002/jcc.23031/abstract


In our study, "poss_lys.lib" and "dpi_lys.lib" are the amber library files for the creation of POSS-PLL and PDI-PLL dendrimers respectively. If you use the "poss_lys.lib" and "dpi_lys.lib", please cite our paper (https://pubs.acs.org/doi/10.1021/acs.jpcb.2c08983):




A brief tutorial for building G3 POSS-PLL dendrimer using tleap of Ambertools is as follows.

*source leaprc.gaff*\
*loadoff poss_lys.lib*\
*loadamberparams aaa.frcmod*\
*loadamberparams bbb.frcmod*\
*loadamberparams ccc.frcmod*\
*den=loadpdb L3.pdb*\
*bondByDistance den 1.558*\
*saveamberparm den L3.prmtop L3.inpcrd*\
*check den*\
*quit*
