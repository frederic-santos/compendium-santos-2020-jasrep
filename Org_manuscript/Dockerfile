FROM ubuntu:19.10

### Set non-interactive mode:
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf

### Install basic system packages:
RUN apt-get update && apt-get install software-properties-common
RUN apt-get update && apt-get install -y \
	curl \
	git \
	gnupg \
	gpm \
	imagemagick \
	ispell \
	libacl1 \
	libasound2 \
	libcanberra-gtk3-module \
	libcurl4 \
	libcurl4-openssl-dev \
	liblcms2-2 \
	libdbus-1-3 \
	libgif7 \
	libgnutls30 \
	libgtk-3-0 \
	libjansson4 \
	libjpeg8 \
	libm17n-0 \
	libpng16-16 \
	librsvg2-2 \
	libsm6 \
	libssl-dev \
	libtiff5 \
	libx11-xcb1 \
	libxml2 \
	libxml++2.6-dev \
	libxpm4 \
	openssh-client \
	texinfo \
    && rm -rf /var/lib/apt/lists/*

### Install Latex and its dependencies:
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
	latexmk \
	texlive \
	texlive-fonts-extra \
	texlive-publishers    

### Install R and the R packages used in the article:
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu eoan-cran35/'
RUN apt-get update && apt-get install r-base=3.6.3-1eoan
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-04-20/')); \
  install.packages(c('aplpack', 'cellWise', 'FactoMineR', 'MASS', 'mvoutlier', 'quantreg', 'remotes', 'robustbase', 'scatterplot3d', 'solitude', 'univOutl'))"
RUN R -e "remotes::install_github('geanes/bioanth', ref = 'b179b396')"
RUN R -e "remotes::install_git('https://gitlab.com/f.santos/anthrostat.git', ref = 'v0.1.5')"

### Install Emacs 26.3:
RUN apt-get install emacs=1:26.3+1-1ubuntu1

### Create a tree in repo:
RUN mkdir /home/article_jasrep/
RUN mkdir /home/article_jasrep/figures/

### Install Emacs packages by running the init file a first time:
COPY ./init_Santos2020.el /home/article_jasrep/init_Santos2020.el
COPY ./ox-extra.el /root/.emacs.d/lisp/ox-extra.el
RUN emacs --script /home/article_jasrep/init_Santos2020.el

### Move the article files to the Docker:
COPY ./model5-names.bst /home/article_jasrep/model5-names.bst
COPY ./manuscript_outliers_Santos_2020.org /home/article_jasrep/manuscript_outliers_Santos_2020.org
COPY ./complete_biblio.bib /home/article_jasrep/complete_biblio.bib

### Launch Emacs:
COPY ./init_Santos2020.el /root/.emacs.d/init.el
CMD ["cd", "/home/article_jasrep"]
CMD ["emacs", "home/article_jasrep/manuscript_outliers_Santos_2020.org"]

