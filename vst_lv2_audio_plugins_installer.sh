#!/bin/sh
## Instala plugins de audio VST y LV2 Distro Ports 
## para Ubuntu 20.04LTS 64 bits y superior (y compatibles).
## por Ubuntu Peronista.

echo "Creando directorios temporal"
cd ~/Descargas/ ;
mkdir plugins/ ;
cd ~/Descargas/plugins/ ;

echo "Descargando paquetes de plugins" ;
wget https://github.com/DISTRHO/DPF-Plugins/releases/download/v1.1/distrho-mini-series-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/arctican-plugins-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/dexed-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/drowaudio-plugins-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/juce-opl-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/luftikus-linux64.tar.xz ;
wget https://github.com/DISTRHO/DPF-Plugins/releases/download/v1.1/mverb-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/obxd-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/pitcheddelay-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/refine-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/stereosourceseparation-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/tal-plugins-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/vex-linux64.tar.xz ;
wget https://github.com/DISTRHO/DISTRHO-Ports/releases/download/2018-04-16/wolpertinger-linux64.tar.xz ;
wget wget https://www.thewavewarden.com/assets/Odin_2.2-4.deb ;

echo "Descomprimiendo plugins..." ;
cd ~/Descargas/plugins/ ;
tar -xJf distrho-mini-series-linux64.tar.xz ;
tar -xJf arctican-plugins-linux64.tar.xz ;
tar -xJf dexed-linux64.tar.xz ;
tar -xJf drowaudio-plugins-linux64.tar.xz ;
tar -xJf juce-opl-linux64.tar.xz ;
tar -xJf luftikus-linux64.tar.xz ;
tar -xJf mverb-linux64.tar.xz ;
tar -xJf obxd-linux64.tar.xz ;
tar -xJf pitcheddelay-linux64.tar.xz ;
tar -xJf refine-linux64.tar.xz ;
tar -xJf stereosourceseparation-linux64.tar.xz ;
tar -xJf tal-plugins-linux64.tar.xz ;
tar -xJf vex-linux64.tar.xz ;
tar -xJf wolpertinger-linux64.tar.xz ;

echo "Instalando Odin..." ;
cd ~/Descargas/plugins/ ;
sudo dpkg -i Odin_2.2-4.deb

echo "Moviendo plugins minis..." ;
cd ~/Descargas/plugins/distrho-mini-series-linux64/ ;
sudo mv 3BandEQ-vst.so /usr/lib/vst/ ;
sudo mv 3BandSplitter-vst.so /usr/lib/vst/ ;
sudo mv PingPongPan-vst.so /usr/lib/vst/ ;
sudo mv 3BandEQ.lv2/ /usr/lib/lv2/ ;
sudo mv 3BandSplitter.lv2/ /usr/lib/lv2/ ;
sudo mv PingPongPan.lv2/ /usr/lib/lv2/ ;
sudo mv 3BandEQ-ladspa.so /usr/lib/ladspa/ ;
sudo mv 3BandSplitter-ladspa.so /usr/lib/ladspa/ ;
sudo mv PingPongPan-ladspa.so /usr/lib/ladspa/ ;
sudo mv *.so /usr/lib/dssi/
sudo mv 3BandEQ-dssi/ /usr/lib/dssi/ ; 
sudo mv 3BandSplitter-dssi/ /usr/lib/dssi/ ; 
sudo mv PingPongPan-dssi/ /usr/lib/dssi/ ;

echo "Instalando Arctican..." ;
cd ~/Descargas/plugins/arctican-plugins-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv TheFunction.lv2/  /usr/lib/lv2/ ;
sudo mv ThePilgrim.lv2/ /usr/lib/lv2/ ;

echo "Instalando Plugins de Drowaudio..." ;
cd ~/Descargas/plugins/drowaudio-plugins-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv drowaudio-distortion.lv2/ /usr/lib/lv2/ ;
sudo mv drowaudio-flanger.lv2/ /usr/lib/lv2/ ;
sudo mv drowaudio-tremolo.lv2/ /usr/lib/lv2/ ;
sudo mv drowaudio-distortionshaper.lv2/ /usr/lib/lv2/ ;
sudo mv drowaudio-reverb.lv2/ /usr/lib/lv2/ ;
cd -

echo "Instalando Juce OPL..." ;
cd ~/Descargas/plugins/juce-opl-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv JuceOPL.lv2/ /usr/lib/lv2/ ;
cd ~/Descargas/plugins/ ;

echo "Instalando Luftikus..." ;
cd ~/Descargas/plugins/luftikus-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv Luftikus.lv2/ /usr/lib/lv2/ ;

echo "Instalando MVerb..." ;
cd ~/Descargas/plugins/mverb-linux64/ ;
sudo mv MVerb-vst.so /usr/lib/vst/ ;
sudo mv MVerb.lv2/ /usr/lib/lv2/ ;
sudo mv MVerb-dssi/ /usr/lib/dssi/ ;
sudo mv MVerb-dssi.so /usr/lib/dssi/ ;
sudo mv MVerb-ladspa.so /usr/lib/ladspa/ ;

echo "Instalando OBDX..." ;
cd ~/Descargas/plugins/obxd-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv Obxd.lv2/ /usr/lib/lv2/ ;

echo "Instalando Pitched Delay..." ;
cd ~/Descargas/plugins/pitcheddelay-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv PitchedDelay.lv2/ /usr/lib/lv2/ ;

echo "Instalando Refine Plugin" ;
cd ~/Descargas/plugins/refine-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv ReFine.lv2/ /usr/lib/lv2/ ;

echo "Instalando Stereo Source Separation" ;
cd ~/Descargas/plugins/stereosourceseparation-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv StereoSourceSeparation.lv2/ /usr/lib/lv2/ ;

echo "Instalando Plugins TAL..." ;
cd ~/Descargas/plugins/tal-plugins-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv TAL-Dub-3.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Filter-2.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Filter.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-NoiseMaker.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Reverb-2.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Reverb-3.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Reverb.lv2/ /usr/lib/lv2/ ;
sudo mv TAL-Vocoder-2.lv2/ /usr/lib/lv2/ ;

echo "Instalando VEX" ;
cd ~/Descargas/plugins/vex-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv Vex.lv2/ /usr/lib/lv2/ ;
echo "Descargando patches de VEX..." ;
mkdir ~/.lv2/ ;
cd ~/.lv2/ ;
wget http://linuxsynths.com/VexPatchesDemos/VexPatches01.tar.gz ;
wget http://linuxsynths.com/VexPatchesDemos/VexPatches02.tar.gz ;
tar xvzf VexPatches01.tar.gz ;
tar xvzf VexPatches02.tar.gz ;

echo "Instalando Wolpertinger..." ;
cd ~/Descargas/plugins/wolpertinger-linux64/ ;
sudo mv *.so /usr/lib/vst/ ;
sudo mv Wolpertinger.lv2/ /usr/lib/lv2/ ;
cd ~/Descargas/plugins/ ;

echo "Instalando dexed..." ;
cd ~/Descargas/plugins/dexed-linux64/ ;
sudo mv Dexed.lv2/ /usr/lib/lv2/ ;

echo "Volviendo al directorio /home/$USER" ;
cd ~ ;

##Una vez instalado los plugins, ya no necesitaremos sus archivos de base, los cuales podremos borrar con:

cd ~/Descargas/plugins/ ;
rm *.tar.xz ;
cd ~/Descargas/ ;
rm -r /plugins/ ;
