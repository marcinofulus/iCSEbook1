#!/usr/bin/env python
# -*- coding: utf-8 -*-


import sys
import os


class ProjectDescription(object):

    def __init__(self, project_name, author, year):
        self.project_name = project_name
        self.author = author
        self.year = year

        no_space_project_name = ''.join(self.project_name.split())

        self.file_name = '_'.join(self.project_name.lower().split())       
        self.skryptdoc_name = no_space_project_name
        self.skryptdoc_documentation_name = no_space_project_name + "-Skrypt"


class AbstractSphinxFile(object):

    def __init__(self, project_description, in_file_path, out_file_path):
        self.in_file_path = in_file_path
        self.out_file_path = out_file_path
        self._open_files()

    def _open_files(self):
        try:
             self.in_file = open(self.in_file_path, "r")        
             self.out_file = open( self.out_file_path, "w")       

             self.content = self.in_file.readlines()
        except IOError as e:
            print "\nError: file does not exist !!!"
            sys.exit(0)

    def _write_file(self):
        self.out_file.write("")
        self.out_file.write("".join(self.content))
        
    def _close_files(self):
        self.in_file.close()
        self.out_file.close()	

    def prepare(self):
        self._set_names()
        self._write_file()
        self._close_files()
        

class SphinxConf(AbstractSphinxFile):

    def _set_names(self):
        self.content = map(lambda x: x.replace("iCSE_PROJECT_NAME", project_description.project_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_AUTHOR_NAME", project_description.author),  self.content)
        self.content = map(lambda x: x.replace("iCSE_YEAR", project_description.year),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_SKRYPTDOC_NAME", project_description.skryptdoc_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_FILE_NAME", project_description.file_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_SKRYPT_DOCUMENTATION_NAME", project_description.skryptdoc_documentation_name),  self.content)  
 
        
class SphinxMakefile(AbstractSphinxFile):

    def _set_names(self):
        self.content = map(lambda x: x.replace("iCSE_SKRYPT_DOCUMENTATION_NAME", project_description.skryptdoc_documentation_name),  self.content)  	        


if __name__ == "__main__":
	
    ''' Set project description '''	
    print ""
    project_name = raw_input("Nazwa projektu : ")
    author = raw_input("Autor : ")
    year = raw_input("Rok : ")

    while (True):
        directory_name = raw_input("Nazwa katalogu : ")
        if not os.path.isdir(directory_name):
            break
        else:
            print "Katalog o tej samej nazwie już istnieje!"


    ''' Prepare conf.py & Makefile '''
    project_description = ProjectDescription(project_name, author, year)

    SphinxConf(project_description, 'icse_sphinx_source/conf_template.py', 'icse_sphinx_source/conf.py').prepare()
    SphinxMakefile(project_description, 'icse_sphinx_source/Makefile_template', 'icse_sphinx_source/Makefile').prepare()


    ''' Copy/Move files '''
    copy_project_dir = "cp -r icse_sphinx_source/project_source" + " " + directory_name
    os.system(copy_project_dir)

    move_conf_file = "mv icse_sphinx_source/conf.py" + " " + directory_name + "/source"
    os.system(move_conf_file)

    move_makefile_file = "mv icse_sphinx_source/Makefile" + " " + directory_name
    os.system(move_makefile_file)


    print "\nUwtorzono nowy projekt..."




