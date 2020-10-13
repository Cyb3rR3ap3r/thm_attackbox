#!/bin/bash

dir=/opt/Cyb3rR3ap3r

if [ ! -d "$dir" ];then
  mkdir $dir
fi
cd $dir

echo "[+] Cloneing additonal GitHub scripts to /opt/Cyb3rR3ap3r"
echo ""

if [ ! -d "$dir/vuln_scan_9001" ];then
  echo "   [+] Cloneing Vuln-Scan-9001"
  git clone https://github.com/Cyb3rR3ap3r/vuln_scan_9001.git 2>/dev/null
  chmod +x $dir/vuln_scan_9001/scanner.py
else
  echo "   [-] Vuln-Scan-9001 already exists"
fi

if [ ! -d "$dir/dirsearch" ];then
  echo "   [+] Cloneing Dirsearch"
  git clone https://github.com/maurosoria/dirsearch.git 2>/dev/null
  chmod +x $dir/dirsearch/dirsearch.py
  ln -sf $dir/dirsearch/dirsearch.py /usr/bin/dirsearch
else
  echo "   [-] Dirsearch already exists"
fi



echo ""
echo "[+] Building Windows transfers folder"
echo ""

win=$dir/transfers/windows

if [ ! -d "$dir/transfers" ];then
  mkdir $dir/transfers
fi

if [ ! -d "$win" ];then
  mkdir $win
  cd $win
fi


######## Downloading files to windows folder

cd $win

if [ ! -f "$win/nc.exe" ];then
  echo "   [+] Getting nc.exe"
  wget https://github.com/int0x33/nc.exe/raw/master/nc.exe 2>/dev/null
else
  echo "   [-] nc.exe already exists"
fi

if [ ! -f "$win/nc64.exe" ];then
  echo "   [+] Getting nc64.exe"
  wget https://github.com/int0x33/nc.exe/raw/master/nc64.exe 2>/dev/null
else
  echo "   [-] nc64.exe already exists"
fi

if [ ! -f "$win/winpeas.bat" ];then
  echo "   [+] Getting winpeas.bat"
  wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASbat/winPEAS.bat 2>/dev/null
  mv $win/winPEAS.bat $win/winpeas.bat
else
  echo "   [-] winpeas.bat already exists"
fi

if [ ! -f "$win/winpeas.exe" ];then
  echo "   [+] Getting winpeas.exe"
  wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/x86/Release/winPEAS.exe 2>/dev/null
  mv $win/winPEAS.exe $win/winpeas.exe
else
  echo "   [-] winpeas.exe already exists"
fi

if [ ! -f "$win/winpeas64.exe" ];then
  echo "   [+] Getting winpeas64.exe"
  wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/x64/Release/winPEAS.exe 2>/dev/null
  mv $win/winPEAS.exe $win/winpeas64.exe
else
  echo "   [-] winpeas64.exe already exists"
fi

if [ ! -f "$win/accesschk64.exe" ];then
  echo "   [+] Getting accesschk.exe"
  wget https://download.sysinternals.com/files/AccessChk.zip 2>/dev/null
  unzip -qq $win/AccessChk.zip
  rm -r AccessChk.zip Eula.txt
else
  echo "   [-] accesschk.exe already exists"
fi

if [ ! -f "$win/jaws-enum.ps1" ];then
  echo "   [+] Getting jaws-enum.ps1"
  wget https://github.com/411Hall/JAWS/raw/master/jaws-enum.ps1 2>/dev/null
else
  echo "   [-] jaws-enum.ps1 already exists"
fi

if [ ! -f "$win/sherlock.ps1" ];then
  echo "   [+] Getting sherlock.ps1"
  wget https://github.com/rasta-mouse/Sherlock/raw/master/Sherlock.ps1 2>/dev/null
  mv $win/Sherlock.ps1 $win/sherlock.ps1
else
  echo "   [-] sherlock.ps1 already exists"
fi

if [ ! -d "$win/windows-kernel-exploits" ];then
  echo "   [+] Cloneing windows-kernel-exploits"
  git clone https://github.com/SecWiki/windows-kernel-exploits.git 2>/dev/null
else
  echo "   [-] windows-kernel-exploits already exists"
fi





echo ""
echo "[+] Building Linux transfers folder"
echo ""


lin=$dir/transfers/linux

if [ ! -d "$lin" ];then
  mkdir $lin
fi


######## Downloading files to windows folder

cd $lin

if [ ! -f "$lin/linpeas.sh" ];then
  echo "   [+] Getting linpeas.sh"
  wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/linPEAS/linpeas.sh 2>/dev/null
else
  echo "   [-] linpeas.sh already exists"
fi

if [ ! -f "$lin/linenum.sh" ];then
  echo "   [+] Getting linenum.sh"
  wget https://github.com/rebootuser/LinEnum/raw/master/LinEnum.sh 2>/dev/null
  mv $lin/LinEnum.sh $lin/linenum.sh
else
  echo "   [-] linenum.sh already exists"
fi

if [ ! -f "$lin/linux-exploit-suggester.sh" ];then
  echo "   [+] Getting linux-exploit-suggester.sh"
  wget https://github.com/mzet-/linux-exploit-suggester/raw/master/linux-exploit-suggester.sh 2>/dev/null
else
  echo "   [-] linux-exploit-suggester.sh already exists"
fi

if [ ! -f "$lin/linuxprivchecker.py" ];then
  echo "   [+] Getting linuxprivchecker.py"
  wget https://github.com/sleventyeleven/linuxprivchecker/raw/master/linuxprivchecker.py 2>/dev/null
else
  echo "   [-] linuxprivchecker.py already exists"
fi
