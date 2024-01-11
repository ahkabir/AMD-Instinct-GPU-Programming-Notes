# Jupyter Notebook basics

You can create python virtual environment if you have multiple
projects that you would want to keep track separately. For
each project you can create a virtual environment and then
install all python packages from within the environment such
that these packages are not visible to other project that
lives in separate virtual environment. For example, let's say
we want to create a Jupyter Notebook for a project in a
virtual environment.

## Installation 

First we will make sure that we have the latest system wide
pip package:

```
$ pip3 --version
$ pip3 install --upgrade pip
```

Now install the virtualenv:

pip3 install --user --upgrade virtualenv

For this tutorial project, let's say we create the project
under a directory called myfirstjupyternb:

```
$ mkdir -p ${HOME}/myfirstjupyternb
$ export NOTEBOOK=${HOME}/myfirstjupyternb
$ cd ${NOTEBOOK}
$ virtualenv env
```

Once the environment is created, subsequently, whenever you want
to work on this project you would enter that directory and
activate the virtualenv:

```
$ cd ${NOTEBOOK}
$ source env/bin/activate
```
Now that we are inside the virtualenv, install all the packages
we need, including jupyter, for our jupyter notebook project.

```
$ pip3 install --upgrade jupyter matplotlib numpy pandas scipy scikit-learn
```

## Check your installation

```
$ python3 -c "import jupyter, matplotlib, numpy, pandas, scipy, sklearn"
```

Once you run the above command there should not be any ouput or any error.

## Launch Jupyter

```
$ jupyter notebook
```

## Create cells

A note contains list of cells. Each cell contains code or text. A cell that
is created can be played.

## More on Jupyter [TODO]



