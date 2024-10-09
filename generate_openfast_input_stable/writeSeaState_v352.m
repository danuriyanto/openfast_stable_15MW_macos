function writeSeaState_v352(SeaState)
C(1,1) = {['	------- Seastate Input File --------------------------------------------	']};
C(end+1,1) = {['IEA 15 MW offshore reference model monopile configuration	']};
C(end+1,1) = {['False Echo - Echo the input file data (flag)	']};
C(end+1,1) = {['---------------------- ENVIRONMENTAL CONDITIONS --------------------------------	']};
C(end+1,1) = {['"default" WtrDens - Water density (kg/m^3)	']};
C(end+1,1) = {['"default" WtrDpth - Water depth (meters)	']};
C(end+1,1) = {['"default" MSL2SWL - Offset between still-water level and mean sea level (meters) [positive upward; unused when WaveMod = 6; must be zero if PotMod=1 or 2]	']};
C(end+1,1) = {['---------------------- WAVE KINEMATICS ---------------------------------------------------	']};
C(end+1,1) = {['15 X_HalfWidth - Half-width of the domain in the X direction	']};
C(end+1,1) = {['15 Y_HalfWidth - Half-width of the domain in the Y direction	']};
C(end+1,1) = {[num2str(SeaState.Z_Depth) ' Z_Depth - Depth of the domain the Z direction	']};
C(end+1,1) = {['5 NX - Number of nodes in half of the X-direction domain	']};
C(end+1,1) = {['5 NY - Number of nodes in half of the Y-direction domain	']};
C(end+1,1) = {['20 NZ - Number of nodes in the Z-direction domain	']};
C(end+1,1) = {['---------------------- WAVES ---------------------------------------------------	']};
C(end+1,1) = {[num2str(SeaState.WaveMod) ' WaveMod - Incident wave kinematics model {0: none=still water, 1: regular (periodic), 1P#: regular with user-specified phase, 2: JONSWAP/Pierson-Moskowitz spectrum (irregular), 3: White noise spectrum (irregular), 4: user-defined spectrum from routine UserWaveSpctrm (irregular), 5: Externally generated wave-elevation time series, 6: Externally generated full wave-kinematics time series [option 6 is invalid for PotMod/=0]} (switch)	']};
C(end+1,1) = {[num2str(SeaState.WaveStMod) ' WaveStMod - Model for stretching incident wave kinematics to instantaneous free surface {0: none=no stretching, 1: vertical stretching, 2: extrapolation stretching, 3: Wheeler stretching} (switch) [unused when WaveMod=0 or when PotMod/=0]	']};
C(end+1,1) = {[num2str(SeaState.WaveTMax) ' WaveTMax - Analysis time for incident wave calculations (sec) [unused when WaveMod=0; determines WaveDOmega=2Pi/WaveTMax in the IFFT]	']};
C(end+1,1) = {['0.1 WaveDT - Time step for incident wave calculations (sec) [unused when WaveMod=0; 0.1<=WaveDT<=1.0 recommended; determines WaveOmegaMax=Pi/WaveDT in the IFFT]	']};
C(end+1,1) = {[num2str(SeaState.WaveHs) ' WaveHs - Significant wave height of incident waves (meters) [used only when WaveMod=1, 2, or 3]	']};
C(end+1,1) = {[num2str(SeaState.WaveTp) ' WaveTp - Peak-spectral period of incident waves (sec) [used only when WaveMod=1 or 2]	']};
C(end+1,1) = {['"Default" WavePkShp - Peak-shape parameter of incident wave spectrum (-) or DEFAULT (string) [used only when WaveMod=2; use 1.0 for Pierson-Moskowitz]	']};
C(end+1,1) = {['0.15708 WvLowCOff - Low cut-off frequency or lower frequency limit of the wave spectrum beyond which the wave spectrum is zeroed (rad/s) [unused when WaveMod=0, 1, or 6]	']};
C(end+1,1) = {['3.2 WvHiCOff - High cut-off frequency or upper frequency limit of the wave spectrum beyond which the wave spectrum is zeroed (rad/s) [unused when WaveMod=0, 1, or 6]	']};
C(end+1,1) = {[num2str(SeaState.WaveDir) ' WaveDir - Incident wave propagation heading direction (degrees) [unused when WaveMod=0 or 6]	']};
C(end+1,1) = {['0 WaveDirMod - Directional spreading function {0: none, 1: COS2S} (-) [only used when WaveMod=2,3, or 4]	']};
C(end+1,1) = {['1 WaveDirSpread - Wave direction spreading coefficient ( > 0 ) (-) [only used when WaveMod=2,3, or 4 and WaveDirMod=1]	']};
C(end+1,1) = {['1 WaveNDir - Number of wave directions (-) [only used when WaveMod=2,3, or 4 and WaveDirMod=1; odd number only]	']};
C(end+1,1) = {['90 WaveDirRange - Range of wave directions (full range: WaveDir +/- 1/2*WaveDirRange) (degrees) [only used when WaveMod=2,3,or 4 and WaveDirMod=1]	']};
C(end+1,1) = {[num2str(SeaState.WaveSeed) ' WaveSeed(1) - First random seed of incident waves [-2147483648 to 2147483647] (-) [unused when WaveMod=0, 5, or 6] 123456789	']};
C(end+1,1) = {['RANLUX WaveSeed(2) - Second random seed of incident waves [-2147483648 to 2147483647] (-) [unused when WaveMod=0, 5, or 6]	']};
C(end+1,1) = {['True WaveNDAmp - Flag for normally distributed amplitudes (flag) [only used when WaveMod=2, 3, or 4]	']};
C(end+1,1) = {['"none" WvKinFile - Root name of externally generated wave data file(s) (quoted string) [used only when WaveMod=5 or 6]	']};
C(end+1,1) = {['---------------------- 2ND-ORDER WAVES ----------------------------------------- [unused with WaveMod=0 or 6]	']};
C(end+1,1) = {['False WvDiffQTF - Full difference-frequency 2nd-order wave kinematics (flag)	']};
C(end+1,1) = {['False WvSumQTF - Full summation-frequency 2nd-order wave kinematics (flag)	']};
C(end+1,1) = {['0 WvLowCOffD - Low frequency cutoff used in the difference-frequencies (rad/s) [Only used with a difference-frequency method]	']};
C(end+1,1) = {['0.5 WvHiCOffD - High frequency cutoff used in the difference-frequencies - need not be set higher than the peak-spectral frequency of the first-order wave spectrum (ωp = 2π/WaveTp) to minimize computational expense. (rad/s) [Only used with a difference-frequency method]	']};
C(end+1,1) = {['0.314159 WvLowCOffS - Low frequency cutoff used in the summation-frequencies (rad/s) [Only used with a summation-frequency method]	']};
C(end+1,1) = {['3.2 WvHiCOffS - High frequency cutoff used in the summation-frequencies (rad/s) [Only used with a summation-frequency method]	']};
C(end+1,1) = {['---------------------- CONSTRAINED WAVE ------------------------------------------------- [unused with WaveMod=6]	']};
C(end+1,1) = {[num2str(SeaState.ConstWaveMod) ' ConstWaveMod - Constrained wave model switch {0=none, 1=specified crest elevation, 2=guaranteed peak-to-trough crest height}	']};
C(end+1,1) = {[num2str(SeaState.CrestHmax) ' CrestHmax - Crest height or elevation	']};
C(end+1,1) = {[num2str(SeaState.CrestTime) ' CrestTime - Time of the crest	']};
C(end+1,1) = {['0 CrestXi - X-position of the crest	']};
C(end+1,1) = {['0 CrestYi - Y-position of the crest	']};
C(end+1,1) = {['---------------------- CURRENT ------------------------------------------------- [unused with WaveMod=6]	']};
C(end+1,1) = {[num2str(SeaState.CurrMod) ' CurrMod - Current profile model {0: none=no current, 1: standard, 2: user-defined from routine UserCurrent} (switch)	']};
C(end+1,1) = {[num2str(SeaState.CurrSSV0) ' CurrSSV0 - Sub-surface current velocity at still water level (m/s) [used only when CurrMod=1]	']};
C(end+1,1) = {[num2str(SeaState.CurrSSDir) ' CurrSSDir - Sub-surface current heading direction (degrees) or DEFAULT (string) [used only when CurrMod=1]	']};
C(end+1,1) = {['20 CurrNSRef - Near-surface current reference depth (meters) [used only when CurrMod=1]	']};
C(end+1,1) = {['0 CurrNSV0 - Near-surface current velocity at still water level (m/s) [used only when CurrMod=1]	']};
C(end+1,1) = {['0 CurrNSDir - Near-surface current heading direction (degrees) [used only when CurrMod=1]	']};
C(end+1,1) = {['0 CurrDIV - Depth-independent current velocity (m/s) [used only when CurrMod=1]	']};
C(end+1,1) = {['0 CurrDIDir - Depth-independent current heading direction (degrees) [used only when CurrMod=1]	']};
C(end+1,1) = {['---------------------- MACCAMY-FUCHS ------------------------------------------------- 	']};
C(end+1,1) = {[num2str(SeaState.MCFD) ' MCFD - Diameter of MacCamy-Fuchs members	']};
C(end+1,1) = {['---------------------- OUTPUT --------------------------------------------------	']};
C(end+1,1) = {['true SeaStSum - Output a summary file [flag]	']};
C(end+1,1) = {['2 OutSwtch - Output requested channels to: [1=SeaSt.out, 2=GlueCode.out, 3=both files]	']};
C(end+1,1) = {['"ES11.4e2" OutFmt - Output format for numerical results (quoted string) [not checked for validity!]	']};
C(end+1,1) = {['"A11" OutSFmt - Output format for header strings (quoted string) [not checked for validity!]	']};
C(end+1,1) = {['1 NWaveElev - Number of wave elevations to output	']};
C(end+1,1) = {['0 WaveElevxi -	']};
C(end+1,1) = {['0 WaveElevyi -	']};
C(end+1,1) = {['0 NWaveKin -	']};
C(end+1,1) = {['0 WaveKinxi -	']};
C(end+1,1) = {['0 WaveKinyi -	']};
C(end+1,1) = {['0 WaveKinzi -	']};
C(end+1,1) = {['---------------------- OUTPUT CHANNELS -----------------------------------------	']};
C(end+1,1) = {['"Wave1Elev" - Wave elevation	']};
C(end+1,1) = {['END	']};
C(end+1,1) = {['---------------------------------------------------------------------------------------	']};
writecell(C,SeaState.FileName,QuoteStrings="none",FileType="text",WriteMode="overwrite");
end