An Org source file to reproduce the whole manuscript
====================================================

In search for a perfect reproducibility, this manuscript have been entirely written in [Org mode for Emacs](https://orgmode.org/). A [Docker image](https://hub.docker.com/repository/docker/fredsantos/compendium_santos2020_jasrep) is also available on DockerHub to provide the full computational environment that allowed this study, and a [Dockerfile](./Dockerfile) is also provided in this repository. Using this Docker image, you should be able to rebuild the whole manuscript in its exact form at the moment of the submission to the *Journal of Archaeological Science: Reports*. All R scripts will be re-evaluated during this process, and the R code chunks can also been evaluated manually in the Org source file.

The following instructions have been tested for Linux (Manjaro) and Windows 10. Advanced Mac OS users should also be able to adapt them to their operating system.

Since Windows instructions are more difficult to follow, a video tutorial is available on Vimeo:
[![Video tutorial](.gitlab/tuto_vignette.png)](https://player.vimeo.com/video/386465412 "Video tutorial")

## 1. Install prerequisites
### 1.1. Linux users
Simply install Docker on your computer. For example, Linux Manjaro users can execute the following command lines into the shell to install and activate it:
```shell
sudo pacman -Ss docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
```
Similar (or even identical) instructions apply for other Linux distributions. For instance, here is a [tutorial for Ubuntu users](https://phoenixnap.com/kb/how-to-install-docker-on-ubuntu-18-04).

### 1.2. Windows users
1. Install [Docker](https://www.docker.com/products/docker-desktop) on your computer from its official website.
2. To improve the way Emacs can be displayed on Windows 10, install [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/).
3. Make sure that Windows Powershell is installed and enabled on your computer. (It is natively installed on all Windows 10 machines: here is [a blog post that explains how to launch a Powershell console](https://winaero.com/blog/all-ways-to-open-powershell-in-windows-10/).)

## 2. Ways to reproduce the manuscript
The full text of the manuscript, along with the embedded R code which produced each figure and table, can be consulted by opening the file [manuscript_outliers_Santos_2020.org](./manuscript_outliers_Santos_2020.org) directly through the GitLab interface online. 

To reproduce the manuscript (i.e., run all the R code and generate all tables and figures again), the easier way is to use a Docker image, as explained below.

### 2.1. Using the Docker image (recommended)
#### 2.1.1. Linux users
Execute the following command line into the shell:
```shell
docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix fredsantos/compendium_santos2020_jasrep:R2
```
Emacs should open! Go to section 2.1.3. for more instructions.

#### 2.1.2. Windows users
Prerequisite: make sure that Docker is running (run Docker Desktop or click on its desktop icon).

1. Run XLaunch from the start menu. Three configuration windows will pop up one after the other. In the first configuration window that shows up, check "Multiple windows", and click next. In the second window, chose the option "Start no client" and click next. In the last window, check all checkboxes (**including the checkbox "Disable access control" which is unchecked by default**). Your configuration is finished.
2. Find out your local ip address by running the following command into a Windows Powershell:
```shell
ipconfig
```
3. Set an environment variable by running the following command into Windows Powershell (replace `<yourip>` with the IP your retrieved from the previous step):
```shell
set-variable -name DISPLAY -value <yourip>:0.0
```
4. You can finally run Emacs by executing the following command into Windows Powershell:
```shell
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix fredsantos/compendium_santos2020_jasrep:R2
```
Emacs should open! Go to section 2.1.3. for more instructions.

### 2.1.3. All users: reproduce the manuscript from Emacs
Once Emacs has opened, you can inspect the full manuscript and the embedded R code. To execute individually each chunk of R code and produce a given figure or table directly into the manuscript, simply press `C-c C-c` (i.e., `Ctrl-c Ctrl-c`) on a line beginning by `#+begin_src R`. R will be called, will execute the whole chunk of R code, and the corresponding result will be displayed just below.

To reproduce the whole manuscript (i.e., execute all chunks of R code at once and get a final pdf), execute the following keybinding: `C-c C-e l o` (i.e., `Ctrl-c Ctrl-e l o`), and press enter to accept the default value of the R working directory. The final pdf file should be displayed directly from within Emacs.

### 2.2. Compiling the Org file locally
This is clearly not the recommended method, and some complications may arise here. However, advanced Emacs users (who also have Perl, R and a complete LaTeX distribution installed) can simply download the Org file and try to compile it locally, without using Docker. The following steps should work:

1. Download and unzip the whole directory `Org_manuscript`.
2. Open a terminal and set this folder as the working directory. Then enter the following command into the shell:
```shell
emacs -q -l init_Santos2020.el manuscript_outliers_Santos_2020.org
```	
3. Emacs should open, install the missing Lisp packages if needed, and finally execute a minimal init file. The org source file should show up. Instructions given in the previous section still apply to compile the org file.
