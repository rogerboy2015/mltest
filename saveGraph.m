function kansio = saveGraph(ax, finame, parentFolder_, newFolder)
    kansio = parentFolder_;
    % get current folder
    curFolder = pwd;
    % try
        cd(kansio);
    % catch X
    %     kansio = pwd;
    %     cd(kansio);
    % end
    fullFolder = fullfile(pwd, newFolder);
    if ~exist(fullFolder, 'dir')
       mkdir(kansio, newFolder);
    end
    fullFname = fullfile(fullFolder, [finame '.png']);
    %exportgraphics(ax,'LinePlot.jpg');
    %tic;
    exportgraphics(ax, fullFname, 'Resolution', 300); % DPI
    %toc;
    cd(curFolder);
end

