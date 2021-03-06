function obj = defineCellProp(obj,Nperm)

nbcont = numel(obj.SubsetVal.contrast) + 1;
nbgain = numel(obj.SubsetVal.gain);
nbroomlength = numel(obj.SubsetVal.roomlength);
nboutcome = numel(obj.SubsetVal.outcome);

cbase = find(obj.SubsetVal.contrast == mode(obj.data.es.contrast));
gbase = find(obj.SubsetVal.gain == mode(obj.data.es.gain));
rbase = find(obj.SubsetVal.roomlength == mode(obj.data.es.roomLength));
obase = find(obj.SubsetVal.outcome == 2);

obj.CellInfo.Finterneuron = [];
obj.CellInfo.field = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field_half1 = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field_half2 = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field_set1 = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field_set2 = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldZ = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldXcorr = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldPos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldPosSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldCOM = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldCOMSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.rate = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldMax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldMin = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldCOM_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldPos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.phsfieldPos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldPosSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldCOM = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldCOMSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfield = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldZ = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsmodulation = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.phsfield_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldCOM_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.phsfieldPos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dXspd = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXspdSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dX = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXpos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXmax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXmaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXmaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXmaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dSpd = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdpos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdmax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdmaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdmaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dSpdmaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dXPhstheta = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXPhsthetaSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXtheta = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetapos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dPhstheta = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetapos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetamax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetamaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetaposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetamaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhsthetamaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dslopeXY = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dphi0XY = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2drhoXY = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dslopeXYSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dphi0XYSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2drhoXYSE = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dXcorrtheta = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetaSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetapos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetaposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetamax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetamaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetaposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetaposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetamaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetamaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dPhscorrtheta = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetaSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetapos = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetaposSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetamax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetamaxSE = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetaposNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetaposSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetamaxNorm = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetamaxSENorm = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dXcorrtheta_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetapos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXcorrthetamax_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dPhscorrtheta_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetapos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dPhscorrthetamax_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dXPhstheta_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXtheta_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetapos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamax_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetaposNorm_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dXthetamaxNorm_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.field2dYtheta_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dYthetapos_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dYthetamax_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dYthetaposNorm_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.field2dYthetamaxNorm_2fold = cell(nbcont, nbgain, nbroomlength, nboutcome);


obj.CellInfo.PhaseRho = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.PhasePval = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.PhaseMax = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.PhaseRayleighPval = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.PhaseRayleighZ = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.phsfieldMUA = cell(1,2);
obj.CellInfo.phsfieldMUASE = cell(1,2);
obj.CellInfo.phsfieldZMUA = cell(1,2);
obj.CellInfo.phsfieldPosMUA = cell(1,2);
obj.CellInfo.LFP2Spike_phscorrMUA = cell(1,2);

obj.CellInfo.phsfieldMUAnorm = cell(1,2);
obj.CellInfo.phsfieldPosMUAnorm = cell(1,2);
obj.CellInfo.LFP2Spike_phscorrMUAnorm = cell(1,2);

obj.CellInfo.phsfieldMean = cell(1,2);
obj.CellInfo.phsfieldPosMean = cell(1,2);
obj.CellInfo.LFP2Spike_phscorrMean = cell(1,2);

obj.CellInfo.SSI = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SSIRef = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfo = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfoPerSpike = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfoRef = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfoPerSpikeRef = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldRef = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldStdRef = cell(nbcont, nbgain, nbroomlength, nboutcome);

obj.CellInfo.SSI_dec = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfo_dec = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.SpatialInfoPerSpike_dec = cell(nbcont, nbgain, nbroomlength, nboutcome);
obj.CellInfo.fieldRef_dec = cell(nbcont, nbgain, nbroomlength, nboutcome);

if ~isfield(obj.CellInfo,'trajdecCell_Xave')
    obj.CellInfo.trajdecCell_Xave = cell(1,obj.CellInfo.NumCells);
    obj.CellInfo.trajdecCell_Xmax = cell(1,obj.CellInfo.NumCells);
    obj.CellInfo.trajdecAll_Xave = cell(1,obj.CellInfo.NumCells);
    obj.CellInfo.trajdecAll_Xmax = cell(1,obj.CellInfo.NumCells);
end

roomlength = round(max(obj.data.es.trajPercent)/50)*50;

if isfield(obj.data.es,'bestchan')
    obj.CellInfo.bestchan = cell2mat(obj.data.es.bestchan);
else
    obj.CellInfo.bestchan = NaN(1,obj.CellInfo.NumCells);
end
if isfield(obj.data.es,'waveform')
    obj.CellInfo.waveform = cell2mat(obj.data.es.waveform(:));
else
    nwpts = 61;
    obj.CellInfo.waveform = NaN(obj.CellInfo.NumCells,nwpts);
end
obj.CellInfo.contrastVal = obj.SubsetVal.contrast;
obj.CellInfo.gainVal = obj.SubsetVal.gain;
obj.CellInfo.outcomeVal = obj.SubsetVal.outcome;

obj.CellInfo.Nperm = Nperm;

obj.CellInfo.RFXpos = [];
obj.CellInfo.Xpos = [];
obj.CellInfo.XposZmax = [];
obj.CellInfo.globalXposrep = [];
obj.CellInfo.RFYpos = [];
obj.CellInfo.Ypos = [];
obj.CellInfo.YposZmax = [];
obj.CellInfo.globalYposrep = [];
if isfield(obj.data,'VStuning')
    if ~isempty(obj.data.VStuning)
        for icell = 1:obj.CellInfo.NumCells
            for iexp = 1:numel(obj.data.VStuning)
                switch obj.data.VStuning(iexp).name
                    case '10 x1'
                        obj.CellInfo.Xpos(icell) = mean(obj.data.VStuning(iexp).Xpos(obj.data.VStuning(iexp).mean(icell,1:end-1) == max(obj.data.VStuning(iexp).mean(icell,1:end-1))));
                        obj.CellInfo.RFXpos(icell,:) = obj.data.VStuning(iexp).mean(icell,1:end-1);
                        obj.CellInfo.XposZmax(icell) = max(obj.data.VStuning(iexp).zscore(icell,1:end-1));
                        obj.CellInfo.globalXposrep(icell,:) = obj.data.VStuning(iexp).globalrep(icell,:);
                    case '9 y1'
                        obj.CellInfo.Ypos(icell) = mean(obj.data.VStuning(iexp).Ypos(obj.data.VStuning(iexp).mean(icell,1:end-1) == max(obj.data.VStuning(iexp).mean(icell,1:end-1))));
                        obj.CellInfo.RFYpos(icell,:) = obj.data.VStuning(iexp).mean(icell,1:end-1);
                        obj.CellInfo.YposZmax(icell) = max(obj.data.VStuning(iexp).zscore(icell,1:end-1));
                        obj.CellInfo.globalYposrep(icell,:) = obj.data.VStuning(iexp).globalrep(icell,:);
                end
            end
        end
    end
end

for c = 1:numel(obj.SubsetVal.contrast) +1
    for g = 1:numel(obj.SubsetVal.gain)
        for r = 1:numel(obj.SubsetVal.roomlength)
            for o = 1:numel(obj.SubsetVal.outcome)
                if c > numel(obj.SubsetVal.contrast)
                    contidx = find(obj.SubsetVal.contrast>0);
                else
                    contidx = c;
                end
                tidx = obj.getSubsets(contidx, g, r, o);
                samplerate = 1./obj.data.es.sampleSize;
                dx = 1;
                nbXbinsmth = (100/1)/2;
                if (c == cbase || c > numel(obj.SubsetVal.contrast)) && g == gbase ...
                        && r == rbase && o == obase
                    usedNperm = Nperm;
                else
                    usedNperm = 0;
                end
                for iperm = 0:usedNperm
                    idx = find(tidx);
                    for icell = 1:obj.CellInfo.NumCells
                        meanrate = (sum(obj.data.es.spikeTrain(tidx,icell))/sum(tidx))*mean(samplerate);
                        if iperm == 0
                            spktrain = obj.data.es.spikeTrain(idx,icell);
                        else
                            try
                            spkISI = [1;diff(find(obj.data.es.spikeTrain(idx,icell) > 0))];
                            spktrain = 0*obj.data.es.spikeTrain(idx,icell);
                            if ~isempty(spktrain) && numel(spkISI) > 1
                                spktrain(cumsum(spkISI(randperm(numel(spkISI))))) = 1;
                            end
                            catch
                                keyboard
                            end
                        end
                        
                        [SInfo, SInfoperSpk, map] = SpatialInformation(obj.data.es.trajPercent(tidx), spktrain(:,:), dx, samplerate(tidx),nbXbinsmth,obj.data.es.CircularMaze);
                        SSI = (max(map) - mean(map))/mean(map);
                        map = map(:)';
                        if ~isempty(map)
                            if iperm == 0
                                try
                                    obj.CellInfo.SSI{c, g, r, o}(icell) = SSI;
                                    obj.CellInfo.SpatialInfo{c, g, r, o}(icell) = SInfo;
                                    obj.CellInfo.SpatialInfoPerSpike{c, g, r, o}(icell) = SInfoperSpk;
                                    obj.CellInfo.fieldRef{c, g, r, o}(icell,:) = 0*map;
                                    obj.CellInfo.fieldStdRef{c, g, r, o}(icell,:) = 0*map;
                                catch
                                    keyboard
                                end
                            else
                                try
                                    obj.CellInfo.SSIRef{c, g, r, o}(icell,iperm) = SSI;
                                    obj.CellInfo.SpatialInfoRef{c, g, r, o}(icell,iperm) = SInfo;
                                    obj.CellInfo.SpatialInfoPerSpikeRef{c, g, r, o}(icell,iperm) = SInfoperSpk;
                                    obj.CellInfo.fieldRef{c, g, r, o}(icell,:) = obj.CellInfo.fieldRef{c, g, r, o}(icell,:) + map/Nperm;
                                    obj.CellInfo.fieldStdRef{c, g, r, o}(icell,:) = obj.CellInfo.fieldStdRef{c, g, r, o}(icell,:) + map.^2/Nperm;
                                catch
                                    keyboard
                                end
                            end
                        else
                            obj.CellInfo.SpatialInfo{c, g, r, o}(icell) = NaN;
                            obj.CellInfo.SpatialInfoPerSpike{c, g, r, o}(icell) = NaN;
                            obj.CellInfo.fieldRef{c, g, r, o}(icell,:) = 0;
                            obj.CellInfo.fieldStdRef{c, g, r, o}(icell,:) = 0;
                        end
                        try
                            if icell <= numel(obj.CellInfo.trajdecCell_Xave)
                                if ~isempty(obj.CellInfo.trajdecCell_Xave{icell})
                                    [SInfo_dec, SInfoperSpk_dec, map_dec] = SpatialInformation(obj.CellInfo.trajdecCell_Xave{icell}(tidx)-1, spktrain(:,:), dx, samplerate(tidx),nbXbinsmth,obj.data.es.CircularMaze);
                                    SSI_dec = (max(map_dec) - mean(map_dec))/mean(map_dec);
                                    map_dec = map_dec(:)';
                                    if ~isempty(map_dec)
                                        if iperm == 0
                                            try
                                                obj.CellInfo.SSI_dec{c, g, r, o}(icell) = SSI_dec;
                                                obj.CellInfo.SpatialInfo_dec{c, g, r, o}(icell) = SInfo_dec;
                                                obj.CellInfo.SpatialInfoPerSpike_dec{c, g, r, o}(icell) = SInfoperSpk_dec;
                                                obj.CellInfo.field_dec{c, g, r, o}(icell,:) = 0*map_dec;
                                            catch
                                                keyboard
                                            end
                                        end
                                    else
                                        obj.CellInfo.SSI_dec{c, g, r, o}(icell) = NaN;
                                        obj.CellInfo.SpatialInfo_dec{c, g, r, o}(icell) = NaN;
                                        obj.CellInfo.SpatialInfoPerSpike_dec{c, g, r, o}(icell) = NaN;
                                        obj.CellInfo.fieldRef_dec{c, g, r, o}(icell,:) = 0;
                                    end
                                end
                            end
                        catch
                            keyboard
                        end
                    end
                end
                if Nperm > 0
                    obj.CellInfo.fieldStdRef{c, g, r, o} = (Nperm/(Nperm-1)*(obj.CellInfo.fieldStdRef{c, g, r, o} - obj.CellInfo.fieldRef{c, g, r, o}.^2)).^0.5;
                else
                    obj.CellInfo.fieldStdRef{c, g, r, o} = NaN(size(obj.CellInfo.fieldStdRef{c, g, r, o}));
                end
                
                idxall = find(tidx);
                randidxset = randperm(numel(idxall));
                tidx_set1 = false(size(tidx));
                tidx_set2 = false(size(tidx));
                tidx_set1(idxall(randidxset(1:floor(numel(randidxset)/2)))) = true;
                tidx_set2(idxall(randidxset(floor(numel(randidxset)/2)+1:end))) = true;
                tidx_set1 = tidx_set1 & obj.data.es.completetrial;
                tidx_set2 = tidx_set2 & obj.data.es.completetrial;
                
                for icell = 1:obj.CellInfo.NumCells
                    map = [];
                    if isfield(obj.maps1d,'trajPercent')
                        if ~isempty(obj.maps1d.trajPercent{c, g, r, o}.model)
                            map = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).meanrespModel;
                            mapbase = obj.maps1d.trajPercent{cbase, gbase, rbase, obase}.model.tuning(icell).meanrespModel;
                            mapSE = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).SErespModel;
                            fieldCOM = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).meanrespModelXpos;
                            fieldCOMSE = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).SErespModelXpos;
                            fieldmax = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).meanrespModelXmax;
                            fieldmaxSE = obj.maps1d.trajPercent{c, g, r, o}.model.tuning(icell).SErespModelXmax;
                            
                            x = obj.maps1d.trajPercent{c, g, r, o}.bins;
                        end
                    end
                    map_2fold = [];
                    if isfield(obj.maps1d,'trajPercent_2fold')
                        if ~isempty(obj.maps1d.trajPercent_2fold{c, g, r, o}.model)
                            map_2fold = obj.maps1d.trajPercent_2fold{c, g, r, o}.model.tuning(icell).respModel;
                            fieldCOM_2fold = obj.maps1d.trajPercent_2fold{c, g, r, o}.model.tuning(icell).respModelXpos;
                            fieldmax_2fold = obj.maps1d.trajPercent_2fold{c, g, r, o}.model.tuning(icell).respModelXmax;
                        end
                    end
                    if c == cbase && g == gbase && r == rbase && o == obase
                        %normaveform = (waveform)./repmat(max(abs(waveform),[],1),[size(waveform,1) 1]);
                        Spkwfcenter = floor(size(obj.CellInfo.waveform,2)/2);
                        obj.CellInfo.min2maxSpkwf(icell) = (Spkwfcenter+find(obj.CellInfo.waveform(icell,(Spkwfcenter+1):end)==max(obj.CellInfo.waveform(icell,(Spkwfcenter+1):end)),1,'first'))-find(obj.CellInfo.waveform(icell,:)==min(obj.CellInfo.waveform(icell,:)),1,'first');
                        
                        spkautocorr = 60*xcorr(obj.data.es.spikeTrain(:,icell),60,'coeff');
                        spkautocorr = spkautocorr(62:end);
                        obj.CellInfo.spkautocorr(icell,:) = spkautocorr;
                        obj.CellInfo.burstindex(icell) = max(spkautocorr(1:3))/max(spkautocorr(6:end));
                        obj.CellInfo.rateautocorr(icell) = nanmean(spkautocorr(end-5:end));
                        
                        [minFRmapbase,~] = fast1Dmap(obj.data.es.trajPercent(tidx), obj.data.es.spikeTrain(idx,icell), dx, samplerate(tidx), nbXbinsmth, obj.data.es.CircularMaze);
                        minFR = min(minFRmapbase);
                        obj.CellInfo.minFR(icell) = minFR;
                        if ~isempty(minFRmapbase)
                            obj.CellInfo.Spatialmodulation(icell) = (max(minFRmapbase) - mean(minFRmapbase))/mean(minFRmapbase);
                        else
                            obj.CellInfo.Spatialmodulation(icell) = NaN;
                        end
                        if ((obj.CellInfo.burstindex(icell) < 1 && obj.CellInfo.minFR(icell) > 5) || (obj.CellInfo.minFR(icell) > 15)) ...
                           && obj.CellInfo.Probe(icell) == 1
                            obj.CellInfo.Finterneuron(icell) = true;
                            if ~contains(obj.CellInfo.CellListString{icell},'IN')
                                obj.CellInfo.CellListString{icell} = [obj.CellInfo.CellListString{icell} '_IN'];
                            end
                        else
                            stridx = strfind(obj.CellInfo.CellListString{icell},'IN');
                            if ~isempty(stridx)
                                obj.CellInfo.CellListString{icell} = obj.CellInfo.CellListString{icell}(1:stridx(1)-1);
                            end
                            obj.CellInfo.Finterneuron(icell) = false;
                        end
                    end
                    
                    if ~isempty(map) && sum(isnan(map)) == 0
                        obj.CellInfo.fieldPos{c, g, r, o}(icell) = fieldmax;
                        obj.CellInfo.fieldPosSE{c, g, r, o}(icell) = fieldmaxSE;
                        obj.CellInfo.fieldCOM{c, g, r, o}(icell) = fieldCOM;
                        obj.CellInfo.fieldCOMSE{c, g, r, o}(icell) = fieldCOMSE;
                        obj.CellInfo.field{c, g, r, o}(icell,:) = map;
                        obj.CellInfo.fieldSE{c, g, r, o}(icell,:) = mapSE;
                        obj.CellInfo.fieldXcorr{c, g, r, o}(icell,:) = xcorr(repmat(map-mean(map),[1 3]),repmat(mapbase-mean(mapbase),[1 3]),50,'coeff');
                        [~,imax] = max(map);
                        obj.CellInfo.fieldZ{c, g, r, o}(icell) = (map(imax) - mean(map))./mapSE(imax);
                        obj.CellInfo.rate{c, g, r, o}(icell) = (sum(obj.data.es.spikeTrain(tidx,icell))/sum(tidx))*mean(samplerate(tidx));
                        obj.CellInfo.fieldMax{c, g, r, o}(icell) = max(map);
                        obj.CellInfo.fieldMin{c, g, r, o}(icell) = min(map);
                    else
                        obj.CellInfo.fieldPos{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.fieldPosSE{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.fieldCOM{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.fieldCOMSE{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.field{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.fieldSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.fieldXcorr{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.fieldZ{c, g, r, o}(icell) = 0;
                        obj.CellInfo.rate{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.fieldMax{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.fieldMin{c, g, r, o}(icell) = NaN;
                    end
                    if ~isempty(map_2fold) && sum(isnan(map_2fold(:))) == 0
                        obj.CellInfo.field_2fold{c, g, r, o}(icell,:,:) = map_2fold;
                        obj.CellInfo.fieldCOM_2fold{c, g, r, o}(icell,:) = fieldCOM_2fold;
                        obj.CellInfo.fieldPos_2fold{c, g, r, o}(icell,:) = fieldmax_2fold;
                    else
                        obj.CellInfo.field_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.fieldCOM_2fold{c, g, r, o}(icell,:) = NaN;
                        obj.CellInfo.fieldPos_2fold{c, g, r, o}(icell,:) = NaN;
                    end
                    
                    map2d = [];
                    if isfield(obj.maps2d,'trajPercent_smthBallSpd')
                        if ~isempty(obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model)
                            map2d = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModel;
                            map2dSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModel;
                            map2dX = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelX;
                            map2dXSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelX;
                            map2dXPos = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelXpos;
                            map2dXPosSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelXpos;
                            map2dXmax = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelXmax;
                            map2dXmaxSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelXmax;
                            map2dXPosNorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelXposNorm;
                            map2dXPosSENorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelXposNorm;
                            map2dXmaxNorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelXmaxNorm;
                            map2dXmaxSENorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelXmaxNorm;
                            
                            map2dY = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelY;
                            map2dYSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelY;
                            map2dYPos = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelYpos;
                            map2dYPosSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelYpos;
                            map2dYmax = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelYmax;
                            map2dYmaxSE = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelYmax;
                            map2dYPosNorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelYposNorm;
                            map2dYPosSENorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelYposNorm;
                            map2dYmaxNorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).meanrespModelYmaxNorm;
                            map2dYmaxSENorm = obj.maps2d.trajPercent_smthBallSpd{c, g, r, o}.model.tuning(icell).SErespModelYmaxNorm;
                        end
                    end
                    
                    if ~isempty(map2d) && sum(isnan(map2d(:))) == 0
                        obj.CellInfo.field2dXspd{c, g, r, o}(icell,:,:) = map2d;
                        obj.CellInfo.field2dXspdSE{c, g, r, o}(icell,:,:) = map2dSE;
                        obj.CellInfo.field2dX{c, g, r, o}(icell,:) = map2dX(:)';
                        obj.CellInfo.field2dXSE{c, g, r, o}(icell,:) = map2dXSE(:)';
                        obj.CellInfo.field2dXpos{c, g, r, o}(icell,:) = map2dXPos(:)';
                        obj.CellInfo.field2dXposSE{c, g, r, o}(icell,:) = map2dXPosSE(:)';
                        obj.CellInfo.field2dXmax{c, g, r, o}(icell,:) = map2dXmax(:)';
                        obj.CellInfo.field2dXmaxSE{c, g, r, o}(icell,:) = map2dXmaxSE(:)';
                        obj.CellInfo.field2dXposNorm{c, g, r, o}(icell,:) = map2dXPosNorm(:)';
                        obj.CellInfo.field2dXposSENorm{c, g, r, o}(icell,:) = map2dXPosSENorm(:)';
                        obj.CellInfo.field2dXmaxNorm{c, g, r, o}(icell,:) = map2dXmaxNorm(:)';
                        obj.CellInfo.field2dXmaxSENorm{c, g, r, o}(icell,:) = map2dXmaxSENorm(:)';
                        
                        obj.CellInfo.field2dSpd{c, g, r, o}(icell,:) = map2dY(:)';
                        obj.CellInfo.field2dSpdSE{c, g, r, o}(icell,:) = map2dYSE(:)';
                        obj.CellInfo.field2dSpdpos{c, g, r, o}(icell,:) = map2dYPos(:)';
                        obj.CellInfo.field2dSpdposSE{c, g, r, o}(icell,:) = map2dYPosSE(:)';
                        obj.CellInfo.field2dSpdmax{c, g, r, o}(icell,:) = map2dYmax(:)';
                        obj.CellInfo.field2dSpdmaxSE{c, g, r, o}(icell,:) = map2dYmaxSE(:)';
                        obj.CellInfo.field2dSpdposNorm{c, g, r, o}(icell,:) = map2dYPosNorm(:)';
                        obj.CellInfo.field2dSpdposSENorm{c, g, r, o}(icell,:) = map2dYPosSENorm(:)';
                        obj.CellInfo.field2dSpdmaxNorm{c, g, r, o}(icell,:) = map2dYmaxNorm(:)';
                        obj.CellInfo.field2dSpdmaxSENorm{c, g, r, o}(icell,:) = map2dYmaxSENorm(:)';
                    else
                        obj.CellInfo.field2dXspd{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXspdSE{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dX{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXpos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXmax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXmaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXmaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXmaxSENorm{c, g, r, o}(icell,:) = 0;
                        
                        obj.CellInfo.field2dSpd{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdpos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdmax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdmaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdmaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dSpdmaxSENorm{c, g, r, o}(icell,:) = 0;
                    end
                    
                    map2d_theta = [];
                    if isfield(obj.maps2d,'trajPercent_LFPphase2')
                        if ~isempty(obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model)
                            map2d_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModel;                           
                            
                            map2dSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModel;
                            map2dX_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelX;
                            map2dXSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelX;
                            map2dXNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXNorm;
                            map2dXSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXNorm;
                            map2dXPos_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXpos;
                            map2dXPosSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXpos;
                            map2dXmax_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXmax;
                            map2dXmaxSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXmax;
                            map2dXPosNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXposNorm;
                            map2dXPosSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXposNorm;
                            map2dXmaxNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXmaxNorm;
                            map2dXmaxSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXmaxNorm;
                            
                            map2dY_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelY;
                            map2dYSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelY;
                            map2dYNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelYNorm;
                            map2dYSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelYNorm;
                            map2dYPos_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelYpos;
                            map2dYPosSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelYpos;
                            map2dYmax_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelYmax;
                            map2dYmaxSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelYmax;
                            map2dYPosNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelYposNorm;
                            map2dYPosSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelYposNorm;
                            map2dYmaxNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelYmaxNorm;
                            map2dYmaxSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelYmaxNorm;
                            
                            map2dslopeXY = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelslopeXY;
                            map2dphi0XY = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelphi0XY;
                            map2drhoXY = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelrhoXY;
                            map2dslopeXYSE = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelslopeXY;
                            map2dphi0XYSE = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelphi0XY;
                            map2drhoXYSE = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelrhoXY;
                            
                            map2dXcorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelX;
                            map2dXcorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelX;
                            map2dXPoscorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelXpos;
                            map2dXPoscorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelXpos;
                            map2dXmaxcorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelXmax;
                            map2dXmaxcorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelXmax;
                            map2dXPoscorrNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelXposNorm;
                            map2dXPoscorrSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelXposNorm;
                            map2dXmaxcorrNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelXmaxNorm;
                            map2dXmaxcorrSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelXmaxNorm;
                            
                            map2dYcorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelY;
                            map2dYcorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelY;
                            map2dYPoscorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelYpos;
                            map2dYPoscorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelYpos;
                            map2dYmaxcorr_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelYmax;
                            map2dYmaxcorrSE_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelYmax;
                            map2dYPoscorrNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelYposNorm;
                            map2dYPoscorrSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelYposNorm;
                            map2dYmaxcorrNorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).meancorrModelYmaxNorm;
                            map2dYmaxcorrSENorm_theta = obj.maps2d.trajPercent_LFPphase2{c, g, r, o}.model.tuning(icell).SEcorrModelYmaxNorm;
                            
                            xmap = map2dX_theta;
                            [~,imax] = max(xmap);
                            Xmax = max(obj.data.es.trajPercent);
                            varXtemp = mod(obj.data.es.trajPercent - imax + Xmax/2,Xmax)-Xmax/2;
                            xmap = circshift(xmap,-imax+floor(numel(xmap)/2));
                            fieldstart = x(find(xmap(1:floor(numel(xmap)/2))<=mean(xmap),1,'last'))-floor(numel(xmap)/2);
                            fieldend = x(find(xmap(floor(numel(xmap)/2)+1:end)<=mean(xmap),1,'first'));
                            spktraintemp = obj.data.es.spikeTrain(:,icell);
                            spktraintemp(varXtemp<=fieldstart | varXtemp>=fieldend) = 0;
                            [rho,pval] = circ_corrcc(obj.data.es.spikePhase(tidx & spktraintemp>0.5,icell)/360*2*pi, varXtemp(tidx & spktraintemp>0.5)/Xmax*2*pi);
                            
                            phsmap = map2dY_theta;
                            obj.CellInfo.Phase{c, g, r, o}(icell,:) = phsmap(:)';
                            
                            y = linspace(0,360,numel(phsmap));
                            phsmap = phsmap/sum(phsmap)*sum(obj.data.es.spikeTrain(tidx,icell),1);
                            [rtest_pval,rtest_z] = circ_rtest(y/360*2*pi,phsmap);
                            
                            [~, phsidx] = max(map2dY_theta);
                            phsmax = y(phsidx);
                        end
                    end
                    map2d_theta_2fold = [];
                    if isfield(obj.maps2d,'trajPercent_LFPphase2_2fold')
                        if ~isempty(obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model)
                            map2dXcorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelX;
                            map2dXPoscorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelXpos;
                            map2dXmaxcorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelXmax;
                            
                            map2dYcorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelY;
                            map2dYPoscorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelYpos;
                            map2dYmaxcorr_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).corrModelYmax;
                            
                            map2d_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModel;
                            map2dX_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelX;
                            map2dXPos_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXpos;
                            map2dXmax_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXmax;
                            map2dXPosNorm_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXposNorm;
                            map2dXmaxNorm_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXmaxNorm;
                            
                            map2dY_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelY;
                            map2dYPos_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelYpos;
                            map2dYmax_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelYmax;
                            map2dYPosNorm_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelYposNorm;
                            map2dYmaxNorm_theta_2fold = obj.maps2d.trajPercent_LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelYmaxNorm;
                        end
                    end
                    if ~isempty(map2d_theta) && sum(isnan(map2d_theta(:))) == 0
                        obj.CellInfo.field2dXPhstheta{c, g, r, o}(icell,:,:) = map2d_theta;
                        obj.CellInfo.field2dXPhsthetaSE{c, g, r, o}(icell,:,:) = map2dSE_theta;
                        obj.CellInfo.field2dXtheta{c, g, r, o}(icell,:) = map2dX_theta(:)';
                        obj.CellInfo.field2dXthetaSE{c, g, r, o}(icell,:) = map2dXSE_theta(:)';
                        obj.CellInfo.field2dXthetaNorm{c, g, r, o}(icell,:) = map2dXNorm_theta(:)';
                        obj.CellInfo.field2dXthetaSENorm{c, g, r, o}(icell,:) = map2dXSENorm_theta(:)';
                        obj.CellInfo.field2dXthetapos{c, g, r, o}(icell,:) = map2dXPos_theta(:)';
                        obj.CellInfo.field2dXthetaposSE{c, g, r, o}(icell,:) = map2dXPosSE_theta(:)';
                        obj.CellInfo.field2dXthetamax{c, g, r, o}(icell,:) = map2dXmax_theta(:)';
                        obj.CellInfo.field2dXthetamaxSE{c, g, r, o}(icell,:) = map2dXmaxSE_theta(:)';
                        obj.CellInfo.field2dXthetaposNorm{c, g, r, o}(icell,:) = map2dXPosNorm_theta(:)';
                        obj.CellInfo.field2dXthetaposSENorm{c, g, r, o}(icell,:) = map2dXPosSENorm_theta(:)';
                        obj.CellInfo.field2dXthetamaxNorm{c, g, r, o}(icell,:) = map2dXmaxNorm_theta(:)';
                        obj.CellInfo.field2dXthetamaxSENorm{c, g, r, o}(icell,:) = map2dXmaxSENorm_theta(:)';
                        
                        obj.CellInfo.field2dPhstheta{c, g, r, o}(icell,:) = map2dY_theta(:)';
                        obj.CellInfo.field2dPhsthetaSE{c, g, r, o}(icell,:) = map2dYSE_theta(:)';
                        obj.CellInfo.field2dPhsthetaNorm{c, g, r, o}(icell,:) = map2dYNorm_theta(:)';
                        obj.CellInfo.field2dPhsthetaSENorm{c, g, r, o}(icell,:) = map2dYSENorm_theta(:)';
                        obj.CellInfo.field2dPhsthetapos{c, g, r, o}(icell,:) = map2dYPos_theta(:)';
                        obj.CellInfo.field2dPhsthetaposSE{c, g, r, o}(icell,:) = map2dYPosSE_theta(:)';
                        obj.CellInfo.field2dPhsthetamax{c, g, r, o}(icell,:) = map2dYmax_theta(:)';
                        obj.CellInfo.field2dPhsthetamaxSE{c, g, r, o}(icell,:) = map2dYmaxSE_theta(:)';
                        obj.CellInfo.field2dPhsthetaposNorm{c, g, r, o}(icell,:) = map2dYPosNorm_theta(:)';
                        obj.CellInfo.field2dPhsthetaposSENorm{c, g, r, o}(icell,:) = map2dYPosSENorm_theta(:)';
                        obj.CellInfo.field2dPhsthetamaxNorm{c, g, r, o}(icell,:) = map2dYmaxNorm_theta(:)';
                        obj.CellInfo.field2dPhsthetamaxSENorm{c, g, r, o}(icell,:) = map2dYmaxSENorm_theta(:)';
                        
                        obj.CellInfo.field2dslopeXY{c, g, r, o}(icell) = map2dslopeXY;
                        obj.CellInfo.field2dphi0XY{c, g, r, o}(icell) = map2dphi0XY;
                        obj.CellInfo.field2drhoXY{c, g, r, o}(icell) = map2drhoXY;
                        obj.CellInfo.field2dslopeXYSE{c, g, r, o}(icell) = map2dslopeXYSE;
                        obj.CellInfo.field2dphi0XYSE{c, g, r, o}(icell) = map2dphi0XYSE;
                        obj.CellInfo.field2drhoXYSE{c, g, r, o}(icell) = map2drhoXYSE;
                        
                        obj.CellInfo.field2dXcorrtheta{c, g, r, o}(icell,:,:) = map2dXcorr_theta;
                        obj.CellInfo.field2dXcorrthetaSE{c, g, r, o}(icell,:,:) = map2dXcorrSE_theta;
                        obj.CellInfo.field2dXcorrthetapos{c, g, r, o}(icell,:) = map2dXPoscorr_theta;
                        obj.CellInfo.field2dXcorrthetaposSE{c, g, r, o}(icell,:) = map2dXPoscorrSE_theta;
                        obj.CellInfo.field2dXcorrthetamax{c, g, r, o}(icell,:) = map2dXmaxcorr_theta;
                        obj.CellInfo.field2dXcorrthetamaxSE{c, g, r, o}(icell,:) = map2dXmaxcorrSE_theta;
                        obj.CellInfo.field2dXcorrthetaposNorm{c, g, r, o}(icell,:) = map2dXPoscorrNorm_theta;
                        obj.CellInfo.field2dXcorrthetaposSENorm{c, g, r, o}(icell,:) = map2dXPoscorrSENorm_theta;
                        obj.CellInfo.field2dXcorrthetamaxNorm{c, g, r, o}(icell,:) = map2dXmaxcorrNorm_theta;
                        obj.CellInfo.field2dXcorrthetamaxSENorm{c, g, r, o}(icell,:) = map2dXmaxcorrSENorm_theta;
                        
                        obj.CellInfo.field2dPhscorrtheta{c, g, r, o}(icell,:,:) = map2dYcorr_theta;
                        obj.CellInfo.field2dPhscorrthetaSE{c, g, r, o}(icell,:,:) = map2dYcorrSE_theta;
                        obj.CellInfo.field2dPhscorrthetapos{c, g, r, o}(icell,:) = map2dYPoscorr_theta;
                        obj.CellInfo.field2dPhscorrthetaposSE{c, g, r, o}(icell,:) = map2dYPoscorrSE_theta;
                        obj.CellInfo.field2dPhscorrthetamax{c, g, r, o}(icell,:) = map2dYmaxcorr_theta;
                        obj.CellInfo.field2dPhscorrthetamaxSE{c, g, r, o}(icell,:) = map2dYmaxcorrSE_theta;
                        obj.CellInfo.field2dPhscorrthetaposNorm{c, g, r, o}(icell,:) = map2dYPoscorrNorm_theta;
                        obj.CellInfo.field2dPhscorrthetaposSENorm{c, g, r, o}(icell,:) = map2dYPoscorrSENorm_theta;
                        obj.CellInfo.field2dPhscorrthetamaxNorm{c, g, r, o}(icell,:) = map2dYmaxcorrNorm_theta;
                        obj.CellInfo.field2dPhscorrthetamaxSENorm{c, g, r, o}(icell,:) = map2dYmaxcorrSENorm_theta;
                        
                        obj.CellInfo.PhaseRho{c, g, r, o}(icell) = rho;
                        obj.CellInfo.PhasePval{c, g, r, o}(icell) = pval;
                        obj.CellInfo.PhaseRayleighPval{c, g, r, o}(icell) = rtest_pval;
                        obj.CellInfo.PhaseRayleighZ{c, g, r, o}(icell) = rtest_z;
                        obj.CellInfo.PhaseMax{c, g, r, o}(icell) = phsmax;
                    else
                        obj.CellInfo.field2dXPhstheta{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXPhsthetaSE{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXtheta{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetapos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetamax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetamaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetaposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetamaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXthetamaxSENorm{c, g, r, o}(icell,:) = 0;
                        
                        obj.CellInfo.field2dPhstheta{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetapos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetamax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetamaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetaposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetamaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhsthetamaxSENorm{c, g, r, o}(icell,:) = 0;
                        
                        obj.CellInfo.field2dslopeXY{c, g, r, o}(icell) = 0;
                        obj.CellInfo.field2dphi0XY{c, g, r, o}(icell) = 0;
                        obj.CellInfo.field2drhoXY{c, g, r, o}(icell) = 0;
                        obj.CellInfo.field2dslopeXYSE{c, g, r, o}(icell) = 0;
                        obj.CellInfo.field2dphi0XYSE{c, g, r, o}(icell) = 0;
                        obj.CellInfo.field2drhoXYSE{c, g, r, o}(icell) = 0;
                        
                        obj.CellInfo.field2dXcorrtheta{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXcorrthetaSE{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXcorrthetapos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetaposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetamax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetamaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetaposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetaposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetamaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dXcorrthetamaxSENorm{c, g, r, o}(icell,:) = 0;
                        
                        obj.CellInfo.field2dPhscorrtheta{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dPhscorrthetaSE{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dPhscorrthetapos{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetaposSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetamax{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetamaxSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetaposNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetaposSENorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetamaxNorm{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.field2dPhscorrthetamaxSENorm{c, g, r, o}(icell,:) = 0;
                        
                        obj.CellInfo.PhaseRho{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.PhasePval{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.PhaseRayleighPval{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.PhaseRayleighZ{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.PhaseMax{c, g, r, o}(icell) = NaN;
                    end
                    
                    if ~isempty(map2d_theta_2fold) && sum(isnan(map2d_theta_2fold(:))) == 0
                        obj.CellInfo.field2dXcorrtheta_2fold{c, g, r, o}(icell,:,:,:) = map2dXcorr_theta_2fold;
                        obj.CellInfo.field2dXcorrthetapos_2fold{c, g, r, o}(icell,:,:) = map2dXPoscorr_theta_2fold;
                        obj.CellInfo.field2dXcorrthetamax_2fold{c, g, r, o}(icell,:,:) = map2dXmaxcorr_theta_2fold;
                        
                        obj.CellInfo.field2dPhscorrtheta_2fold{c, g, r, o}(icell,:,:,:) = map2dYcorr_theta_2fold;
                        obj.CellInfo.field2dPhscorrthetapos_2fold{c, g, r, o}(icell,:,:) = map2dYPoscorr_theta_2fold;
                        obj.CellInfo.field2dPhscorrthetamax_2fold{c, g, r, o}(icell,:,:) = map2dYmaxcorr_theta_2fold;
                        
                        obj.CellInfo.field2dXPhstheta_2fold{c, g, r, o}(icell,:,:,:) = map2d_theta_2fold;
                        obj.CellInfo.field2dXtheta_2fold{c, g, r, o}(icell,:,:) = map2dX_theta_2fold;
                        obj.CellInfo.field2dXthetapos_2fold{c, g, r, o}(icell,:,:) = map2dXPos_theta_2fold;
                        obj.CellInfo.field2dXthetamax_2fold{c, g, r, o}(icell,:,:) = map2dXmax_theta_2fold;
                        obj.CellInfo.field2dXthetaposNorm_2fold{c, g, r, o}(icell,:,:) = map2dXPosNorm_theta_2fold;
                        obj.CellInfo.field2dXthetamaxNorm_2fold{c, g, r, o}(icell,:,:) = map2dXmaxNorm_theta_2fold;
                        
                        obj.CellInfo.field2dYtheta_2fold{c, g, r, o}(icell,:,:) = map2dY_theta_2fold;
                        obj.CellInfo.field2dYthetapos_2fold{c, g, r, o}(icell,:,:) = map2dYPos_theta_2fold;
                        obj.CellInfo.field2dYthetamax_2fold{c, g, r, o}(icell,:,:) = map2dYmax_theta_2fold;
                        obj.CellInfo.field2dYthetaposNorm_2fold{c, g, r, o}(icell,:,:) = map2dYPosNorm_theta_2fold;
                        obj.CellInfo.field2dYthetamaxNorm_2fold{c, g, r, o}(icell,:,:) = map2dYmaxNorm_theta_2fold;
                    else
                        obj.CellInfo.field2dXcorrtheta_2fold{c, g, r, o}(icell,:,:,:) = 0;
                        obj.CellInfo.field2dXcorrthetapos_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXcorrthetamax_2fold{c, g, r, o}(icell,:,:) = 0;
                        
                        obj.CellInfo.field2dPhscorrtheta_2fold{c, g, r, o}(icell,:,:,:) = 0;
                        obj.CellInfo.field2dPhscorrthetapos_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dPhscorrthetamax_2fold{c, g, r, o}(icell,:,:) = 0;
                        
                        obj.CellInfo.field2dXPhstheta_2fold{c, g, r, o}(icell,:,:,:) = 0;
                        obj.CellInfo.field2dXtheta_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXthetapos_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXthetamax_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXthetaposNorm_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dXthetamaxNorm_2fold{c, g, r, o}(icell,:,:) = 0;
                        
                        obj.CellInfo.field2dYtheta_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dYthetapos_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dYthetamax_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dYthetaposNorm_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.field2dYthetamaxNorm_2fold{c, g, r, o}(icell,:,:) = 0;
                    end
                    
                    phsmap = [];
                    if isfield(obj.maps1d,'LFPphase2')
                        if ~isempty(obj.maps1d.LFPphase2{c, g, r, o}.model)
                            phsmap = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModel;
                            phsmapSE = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).SErespModel;
                            phsfieldCOM = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXpos;
                            phsfieldCOMSE = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXpos;
                            phsfieldmax = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).meanrespModelXmax;
                            phsfieldmaxSE = obj.maps1d.LFPphase2{c, g, r, o}.model.tuning(icell).SErespModelXmax;
                        end
                    end
                    phsmap_2fold = [];
                    if isfield(obj.maps1d,'LFPphase2_2fold')
                        if ~isempty(obj.maps1d.LFPphase2_2fold{c, g, r, o}.model)
                            phsmap_2fold = obj.maps1d.LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModel;
                            phsfieldCOM_2fold = obj.maps1d.LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXpos;
                            phsfieldmax_2fold = obj.maps1d.LFPphase2_2fold{c, g, r, o}.model.tuning(icell).respModelXmax;
                        end
                    end
                    if ~isempty(phsmap) && sum(isnan(phsmap)) == 0
                        obj.CellInfo.phsfieldPos{c, g, r, o}(icell) = phsfieldmax;
                        obj.CellInfo.phsfieldPosSE{c, g, r, o}(icell) = phsfieldmaxSE;
                        obj.CellInfo.phsfieldCOM{c, g, r, o}(icell) = phsfieldCOM;
                        obj.CellInfo.phsfieldCOMSE{c, g, r, o}(icell) = phsfieldCOMSE;
                        obj.CellInfo.phsfield{c, g, r, o}(icell,:) = phsmap;
                        obj.CellInfo.phsfieldSE{c, g, r, o}(icell,:) = phsmapSE;
                        [~,imax] = max(phsmap);
                        obj.CellInfo.phsfieldZ{c, g, r, o}(icell) = (phsmap(imax) - mean(phsmap))./phsmapSE(imax);
                        obj.CellInfo.phsmodulation{c, g, r, o}(icell) = (max(phsmap) - mean(phsmap))/mean(phsmap);
                    else
                        obj.CellInfo.phsfieldPos{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.phsfieldPosSE{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.phsfieldCOM{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.phsfieldCOMSE{c, g, r, o}(icell) = NaN;
                        obj.CellInfo.phsfield{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.phsfieldSE{c, g, r, o}(icell,:) = 0;
                        obj.CellInfo.phsfieldZ{c, g, r, o}(icell) = 0;
                        obj.CellInfo.phsmodulation{c, g, r, o}(icell) = NaN;
                    end
                    if ~isempty(phsmap_2fold) && sum(isnan(phsmap_2fold(:))) == 0
                        obj.CellInfo.phsfield_2fold{c, g, r, o}(icell,:,:) = phsmap_2fold;
                        obj.CellInfo.phsfieldCOM_2fold{c, g, r, o}(icell,:) = phsfieldCOM_2fold;
                        obj.CellInfo.phsfieldPos_2fold{c, g, r, o}(icell,:) = phsfieldmax_2fold;
                    else
                        obj.CellInfo.phsfield_2fold{c, g, r, o}(icell,:,:) = 0;
                        obj.CellInfo.phsfieldCOM_2fold{c, g, r, o}(icell,:) = NaN;
                        obj.CellInfo.phsfieldPos_2fold{c, g, r, o}(icell,:) = NaN;
                    end
                end
                if isfield(obj.data.es,'LFPphase')
                    if c == cbase && g == gbase && r == rbase && o == obase
                        zphsfield_th = 0;
                        wfphsfield_th = 0;
                        for iprobe = 1:2
                            phscellidx = obj.CellInfo.Goodcluster & obj.CellInfo.Probe==iprobe & ~obj.CellInfo.Finterneuron & obj.CellInfo.min2maxSpkwf > wfphsfield_th;%& obj.CellInfo.phsfieldZ{c, g, r, o}>=zphsfield_th 
                            
                            [phsmapall,~,~,phsmapSEall] = fast1Dmap(obj.data.es.LFPphase(tidx), sum(obj.data.es.spikeTrain(idx,phscellidx),2), 20, samplerate(tidx),(360/20)/2,true);
                            obj.CellInfo.phsfieldMUA{iprobe} = phsmapall;
                            obj.CellInfo.phsfieldMUASE{iprobe} = phsmapSEall;
                            [~,imax] = max(phsmapall);
                            obj.CellInfo.phsfieldZMUA{iprobe} = (phsmapall(imax) - mean(phsmapall))./phsmapSEall(imax);
                            obj.CellInfo.phsfieldPosMUA{iprobe} = getCircularAverage(obj.CellInfo.phsfieldMUA{iprobe}(:),0,0.01,0.05);
                            obj.CellInfo.LFP2Spike_phscorrMUA{iprobe} = obj.CellInfo.phsfieldPosMUA{iprobe}*(360/numel(obj.CellInfo.phsfieldMUA{iprobe})) - 180;
                            
                            phsgoodcells = find(phscellidx);
                            phsmapcell = NaN(numel(phsgoodcells),numel(phsmapall));
                            for icell = 1:numel(phsgoodcells)
                                [phsmapcell(icell,:),~,~,~] = fast1Dmap(obj.data.es.LFPphase(tidx), obj.data.es.spikeTrain(idx,phsgoodcells(icell)), 20, samplerate(tidx),(360/20)/2,true);
                            end
                            obj.CellInfo.phsfieldMUAnorm{iprobe} = nanmean(phsmapcell./repmat(nanmean(phsmapcell,2),[1 size(phsmapcell,2)]),1);
                            obj.CellInfo.phsfieldPosMUAnorm{iprobe} = getCircularAverage(obj.CellInfo.phsfieldMUAnorm{iprobe}(:),0,0.01,0.05);
                            obj.CellInfo.LFP2Spike_phscorrMUAnorm{iprobe} = obj.CellInfo.phsfieldPosMUAnorm{iprobe}*(360/numel(obj.CellInfo.phsfieldMUAnorm{iprobe})) - 180;
                            
                            obj.CellInfo.phsfieldMean{iprobe} = nanmean(obj.CellInfo.phsfield{c, g, r, o}(phscellidx,:),1);
                            obj.CellInfo.phsfieldPosMean{iprobe} = getCircularAverage(obj.CellInfo.phsfieldMean{iprobe}(:),0,0.01,0.05);
                            obj.CellInfo.LFP2Spike_phscorrMean{iprobe} = obj.CellInfo.phsfieldPosMean{iprobe}*(360/numel(obj.CellInfo.phsfieldMean{iprobe})) - 180;
                        end
                    end
                else
                    if c == cbase && g == gbase && r == rbase && o == obase
                        for iprobe = 1:2
                            obj.CellInfo.phsfieldMUA{iprobe} = 0;
                            obj.CellInfo.phsfieldMUASE{iprobe} = 0;
                            obj.CellInfo.phsfieldZMUA{iprobe} = NaN;
                            obj.CellInfo.phsfieldPosMUA{iprobe} = NaN;
                            obj.CellInfo.LFP2Spike_phscorrMUA{iprobe} = NaN;
                            
                            obj.CellInfo.phsfieldMUAnorm{iprobe} = 0;
                            obj.CellInfo.phsfieldPosMUAnorm{iprobe} = NaN;
                            obj.CellInfo.LFP2Spike_phscorrMUAnorm{iprobe} = NaN;
                                                        
                            obj.CellInfo.phsfieldMean{iprobe} = 0;
                            obj.CellInfo.phsfieldPosMean{iprobe} = NaN;
                            obj.CellInfo.LFP2Spike_phscorrMean{iprobe} = NaN;
                        end
                    end
                end
            end
        end
    end
end
end