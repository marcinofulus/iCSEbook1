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


class SphinxConf(object):

    def __init__(self, project_description):
        self.in_file = None
        self.out_file = None
        self.is_no_error = True
        self.content = []
        self.__open_files()

    def __open_files(self):
        try:
             self.in_file = open(u'icse_sphinx_source/conf_template.py', "r")        
             self.out_file = open(u'icse_sphinx_source/conf.py', "w")       

             self.content = self.in_file.readlines()
        except IOError as e:
            print "\nError: file does not exist !!!"
            sys.exit(0)

    def __close_files(self):
        self.in_file.close()
        self.out_file.close()

    def __set_names(self):
        self.content = map(lambda x: x.replace("iCSE_PROJECT_NAME", project_description.project_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_AUTHOR_NAME", project_description.author),  self.content)
        self.content = map(lambda x: x.replace("iCSE_YEAR", project_description.year),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_SKRYPTDOC_NAME", project_description.skryptdoc_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_FILE_NAME", project_description.file_name),  self.content) 
        self.content = map(lambda x: x.replace("iCSE_SKRYPT_DOCUMENTATION_NAME", project_description.skryptdoc_documentation_name),  self.content)  

        self.out_file.write("")
        self.out_file.write("".join(self.content))

    def prepare(self):
        self.__set_names()
        self.__close_files()


if __name__ == "__main__":
    print ""
    project_name = raw_input("Nazwa projektu? : ")
    author = raw_input("Autor? : ")
    year = raw_input("Rok? : ")

    while (True):
        directory_name = raw_input("Nazwa katalogu? : ")
        if not os.path.isdir(directory_name):
            break
        else:
            print "Katalog o tej samej nazwie już istnieje!"

    project_description = ProjectDescription(project_name, author, year)

    sphinx_conf = SphinxConf(project_description)
    sphinx_conf.prepare()

    copy_project_dir = "cp -r icse_sphinx_source/project_source" + " " + directory_name
    os.system(copy_project_dir)

    move_conf_file = "mv icse_sphinx_source/conf.py" + " " + directory_name + "/source"
    os.system(move_conf_file)

    print "\nUwtorzono nowy projekt..."




