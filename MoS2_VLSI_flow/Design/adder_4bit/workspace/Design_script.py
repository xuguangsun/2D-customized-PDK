import sys
import os
import string
import math
import shutil

Genus_path='Genus'
Innovus_path='Innovus'

os.system("mkdir Innovus/RTL")
os.system("mkdir Innovus/SDC")

#getting fullnames of specified type of files under the specified folder
def get_file_list(folder):
    filelist = []  
    for dirpath,dirnames,filenames in os.walk(folder):
        for file in filenames:
            file_type = file.split('.')[-1]
            if(file_type in file_type_list):
                file_fullname = os.path.join(dirpath, file) #full name of files
                filelist.append(file_fullname)
    return filelist

#copy the files into specified path
def copy_file(src_file_list, dst_folder):
    print('===========copy start===========')
    for file in src_file_list:
        shutil.copy(file, dst_folder)
    print('===========copy end!===========')


#running Genus synthesis,transform Design name into Genus run.tcl 
os.chdir(Genus_path)
Genus_cmd="python Genus_run.py"+' '+sys.argv[1]
os.system(Genus_cmd)
os.chdir("../")

#copy .v files from Genus to Innovus
src_folder=Genus_path+'/outputs'
dst_folder=Innovus_path+'/RTL'
file_type_list = ['v']
filelist=get_file_list(src_folder)
copy_file(filelist,dst_folder)


#copy .sdc files from Genus to Innovus
src_folder=Genus_path+'/outputs'
dst_folder=Innovus_path+'/SDC'
file_type_list = ['sdc']
filelist=get_file_list(src_folder)
copy_file(filelist,dst_folder)


#Reading length from Genus output_par.txt
os.chdir(Genus_path)
f=open('output_par.txt')
line=f.readline().strip()
os.chdir("../")

#modify Innovus settings.tcl
cmd=Innovus_path+'/SCRIPTS'
os.chdir(cmd)
f=open('settings.tcl','r+')
flist=f.readlines()
flist[3]='set length '+line+'\n'
f=open('settings.tcl','w+')
f.writelines(flist)
f.close()
os.chdir("../..")

#reading lib names from LIBS/lib/min and LIBS/lib/max 
lib_min=os.listdir(Innovus_path+'/LIBS/lib/min')
lib_max=os.listdir(Innovus_path+'/LIBS/lib/max')
lib_min_str=" LIBS/lib/min/".join(lib_min)
lib_max_str=" LIBS/lib/max/".join(lib_max)


#reading qrcTechfile names from LIBS/qx
qrcTechfile=os.listdir(Innovus_path+'/LIBS/qx')
qrcTechfile_str="".join(qrcTechfile)

#reading sdcfile from SDC
sdcfile=os.listdir(Innovus_path+'/SDC')
sdcfile_str=" SDC/".join(sdcfile)


#modify Innovus mmmc.tcl
os.chdir(Innovus_path+'/DATA')
f=open('mmmc.tcl','r+')
flist=f.readlines()

#finding lines about timing and sdc
for i in range(len(flist)):
    if "fast -timing" in flist[i]:
        flist[i]='create_library_set -name fast -timing '+'[list LIBS/lib/min/'+lib_min_str+']\n'
    if "slow -timing" in flist[i]:
        flist[i]='create_library_set -name slow -timing '+'[list LIBS/lib/max/'+lib_max_str+']\n'
    if "-qx_tech_file" in flist[i]:
        flist[i]='-qx_tech_file LIBS/qx/'+qrcTechfile_str+'\n'
    if "-sdc_files" in flist[i]:
        flist[i]='-sdc_files '+'[list SDC/'+sdcfile_str+']\n'
f=open('mmmc.tcl','w+')
f.writelines(flist)
f.close()
os.chdir("../")

#runnning Innovus
os.system ("innovus -file SCRIPTS/runLab.tcl -log logs/base.log")

