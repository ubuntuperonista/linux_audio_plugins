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

## Instala instrumentos VST Clásicos (demos)
echo "Instalando VST y VST de sintetizadores clásicos y efectos de TAL adicionales..."
#creación de directorios ;
mkdir ~/.vst/ ~/.vst3/ ;
mkdir ~/.vst/tal/ ;
mkdir /tmp/plugins/ ;
mkdir /tmp/plugins/presets/ ;
#TAL-U-NO-LX ;
mkdir /tmp/plugins/tal_uno/
cd /tmp/plugins/tal_uno/ ;
wget https://tal-software.com/downloads/plugins/TAL-U-NO-LX-V2_64_linux.zip ;
unzip TAL-U-NO-LX-V2_64_linux.zip ;
mv /tmp/plugins/tal_uno/libTAL-U-NO-LX-V2.so ~/.vst/tal/ ;
mv /tmp/plugins/tal_uno/TAL-U-NO-LX-V2.vst3/ ~/.vst3/ ;
##Pack de presets para TAL-U-NO-LX
mkdir ~/.vst3/TAL-U-NO-LX-V2.vst3/Contents/Resources/
cd ~/.vst3/TAL-U-NO-LX-V2.vst3/Contents/Resources/
wget https://tal-software.com//downloads/presets/Fantomatica_Presets.zip ;
wget https://tal-software.com//downloads/presets/Symbiotic_Sounds_Presets_for_TAL-U-NO-LX-V2.zip ;
wget https://tal-software.com/downloads/presets/FMR%20Factory%20Presets%20Bank.zip ;
wget https://tal-software.com/downloads/presets/Krezie-Synthwave-for-TAL-U-NO-LX.zip ;
wget https://tal-software.com/downloads/presets/Tronsonic%20Presets%20Bank%20.zip ;
wget https://tal-software.com/downloads/presets/Orion-106.zip ;
wget https://tal-software.com/downloads/presets/TwolegsToneworks_-_TAL-U-No-LX_Bank.zip ;
unzip Fantomatica_Presets.zip ;
unzip Symbiotic_Sounds_Presets_for_TAL-U-NO-LX-V2.zip ;
unzip FMR%20Factory%20Presets%20Bank.zip ;
unzip Krezie-Synthwave-for-TAL-U-NO-LX.zip ;
unzip Tronsonic%20Presets%20Bank%20.zip ;
unzip Orion-106.zip ;
unzip TwolegsToneworks_-_TAL-U-No-LX_Bank.zip ;
rm ~/.vst3/TAL-U-NO-LX-V2.vst3/Contents/Resources/*.zip ;
#TAL-J-8
mkdir /tmp/plugins/tal_j8/ ;
cd /tmp/plugins/tal_j8/ ;
wget https://tal-software.com/downloads/plugins/TAL-J-8_64_linux.zip ;
unzip TAL-J-8_64_linux.zip ;
mv /tmp/plugins/tal_j8/libTAL-J-8.so ~/.vst/tal/ ;
mv /tmp/plugins/tal_j8/TAL-J-8.vst3/ ~/.vst3/ ;
##Pack de presets para TAL-J-8 ;
mkdir ~/.vst3/TAL-J-8.vst3/Contents/Resources/ ;
cd ~/.vst3/TAL-J-8.vst3/Contents/Resources/ ;
wget https://tal-software.com/downloads/presets/tal-j-8_factorypresets.zip ;
wget https://tal-software.com/downloads/presets/TAL%20J-8%20Presets%20by%20Heat%20Audio.zip ;
wget https://tal-software.com/downloads/presets/Funkybots_TAL_J-8_Presets.zip ;
wget https://tal-software.com/downloads/presets/Xenos_Soundworks_TAL-J-8.zip ;
wget https://www.dropbox.com/s/xpwy6b20x96rnmo/Realistortion%27s%20Preset%20Pack.rar ;
unrar x Realistortion\'s\ Preset\ Pack.rar ;
unzip Funkybots_TAL_J-8_Presets.zip ;
unzip 'TAL J-8 Presets by Heat Audio.zip' ;
unzip 'TAL-J-8 - Saif Sameer [72 presets].zip' ;
unzip tal-j-8_factorypresets.zip ;
unzip Xenos_Soundworks_TAL-J-8.zip ;
mkdir ~/.vst3/TAL-J-8.vst3/Contents/Resources/lee/ ;
mkdir ~/.vst3/TAL-J-8.vst3/Contents/Resources/arcade/ ;
cd ~/.vst3/TAL-J-8.vst3/Contents/Resources/arcade/ ;
wget https://tal-software.com/downloads/presets/Arcade%20Summer%20J-8%20Free.zip ;
unzip Arcade\ Summer\ J-8\ Free.zip ;
rm Arcade\ Summer\ J-8\ Free.zip ;
cd ~/.vst3/TAL-J-8.vst3/Contents/Resources/lee/
wget https://tal-software.com/downloads/presets/lee_TAL_J-8_Presets.zip ;
unzip lee_TAL_J-8_Presets.zip ;
rm lee_TAL_J-8_Presets.zip ;
cd ~/.vst3/TAL-J-8.vst3/Contents/Resources/ ;
rm *.zip ;
rm *.rar ;
rm -r __MACOSX/ ;

##Instala Vaporizer2 para Ubuntu 22.04LTS
echo "Instalando Vaporizer2 para Ubuntu 22.04LTS..." ;
mkdir /tmp/vaporizer2/ ;
cd /tmp/vaporizer2/ ;
wget https://download.opensuse.org/repositories/multimedia:/proaudio/xUbuntu_22.04/amd64/vaporizer2-lv2_3.4.3+git.6.88bd029-1_amd64.deb ;
sudo dpkg -i vaporizer2-lv2_3.4.3+git.6.88bd029-1_amd64 ;
mkdir /tmp/vaporizer2/presets/ /tmp/vaporizer2/manual/ ;
cd /tmp/manual ; 
wget https://vast-dynamics.com/sites/default/files/downloads/Vaporizer2Manual.pdf ;
cd /tmp/vaporizer2/presets/ ;
wget https://vast-dynamics.com/sites/default/files/downloads/Factory%20Presets.zip https://vast-dynamics.com/sites/default/files/downloads/Preset%20Bank%20by%20Thomas%20Trupiano.zip ;
wget https://vast-dynamics.com/sites/default/files/downloads/Wavetables%20Vaporizer2%20by%20PietW.zip ;
unzip 'Wavetables Vaporizer2 by PietW.zip' ;
unzip 'Factory Presets.zip' ;
unzip 'Preset Bank by Thomas Trupiano.zip' ;
mkdir ~/Documentos/Vaporizer2/ ;
mkdir ~/Documentos/Vaporizer2/Presets/
mv /tmp/vaporizer2/manual/ ~/Documentos/Vaporizer2/
mv /tmp/vaporizer2/presets/Analog/ ~/Documentos/Vaporizer2/Tables/ ;
mv /tmp/vaporizer2/presets/Digital/ ~/Documentos/Vaporizer2/Tables/ ;
mv /tmp/vaporizer2/presets/Presets/* ~/Documentos/Vaporizer2/Presets ;
mv /tmp/vaporizer2/presets/Trupiano/Presets/ ~/Documentos/Vaporizer2/Presets/Trupiano ;
cd ~ ;

##Una vez instalado los plugins, ya no necesitaremos sus archivos de base, los cuales podremos borrar con:

cd ~/Descargas/plugins/ ;
rm *.tar.xz ;
cd ~/Descargas/ ;
rm -r /plugins/ ;
