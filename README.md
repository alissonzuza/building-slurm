
## PT-BR  
Este projeto inicial foi configurado e testado somente em Rocky Linux 8.9 e iremos efetuar melhorais para suportar em outros ambientes e  pacotes diferentes.
Sempre adaptando conforme necessário o uso em cluster HPC

```bash
Container: Podman
S.O: Rock Linux 8.9
PMIX: Origem do repositório  do criador
SLURM: Origem do repositório do criador 
```


# Construindo Slurm
Esse projeto tem por intuito facilitar o build do slurm para ter suporte do pmix por padrão em seu pacote.
Em alguns casos e necessario que versões especificas do pmix , sejam embutidas no pacote do slurm para suporte no cluster HPC.

***Atenção***  
***Todos os pacotes usados do slurm e pmix , são distribuidos de forma original sem modificação, provenientes dos repositórios de seus criados.
Sendo assim não modificamos nenhum pacote e ambos se mantem originalmente como foram feitos, somente estamos compilando para gerar suporte padrão no pacote do slurm.***  

## EN (Google Translator)
This initial project was configured and tested only on Rocky Linux 8.9 and we will make improvements to support other environments and different packages.
Always adapting as necessary for use in HPC clusters.

```bash
Container: Podman
OS: Rock Linux 8.9
PMIX: Creator's repository source
SLURM: Creator's repository source
```

# Building Slurm

This project aims to facilitate the build of slurm to have pmix support by default in its package.
In some cases it is necessary that specific versions of pmix be included in the slurm package for support in the HPC cluster.

***Attention***  
***All packages used from slurm and pmix are distributed in their original form without modification, coming from the repositories of their creators.
Therefore, we do not modify any package and both remain originally as they were created, we are only compiling to generate standard support in the slurm package.***



## Environment Variables

PT-BR  
Essas variaveis devem ser configuradas dentro do script `slurm_build.sh` para baixar corretamente o slurm e o pmix que vai ser compilado

EN  
These variables must be set within the `slurm_build.sh` script to correctly download slurm and the pmix that will be compiled.

`SLURM_VER`

`PMIX_VER`

`ROCK_VER`



## Deployment

To deploy this project run


```bash
  git clone https://github.com/alissonzuza/building-slurm.git   

  cd building-slurm

  chmod +x slurm_build.sh

  Edit variables within the script
  `SLURM_VER`

  `PMIX_VER`

  `ROCK_VER`

  Run script
  ./slurm_build.sh or bash slurm_build.sh


```


PT-BR  
Dentro da pasta raiz do repositorio clonado vai ser criado uma pasta chamda rpmbuild.
Essa pasta rpmbuild está sendo montada no container na pasta /root/rpmbuild e onde são salvos os pacotes compilados e assim já ficam disponiveis  para uso após finalização do build.

EN  
Within the root folder of the cloned repository, a folder called rpmbuild will be created.
This rpmbuild folder is being mounted in the container in the /root/rpmbuild folder and is where the compiled packages are saved and thus are available for use after the build is complete.
## Authors

- [@alissonzuza](https://github.com/alissonzuza)


## Documentation

[Slurm - Mpi Users GUIDE](https://slurm.schedmd.com/mpi_guide.html#pmix)  
[OpenPmix - Repo](https://github.com/openpmix/openpmix/releases)  
[Slurm Source - Repo](https://download.schedmd.com/slurm/)  
