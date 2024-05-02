function [populationEvol] = popevol(pop,...
                                  maximal_generation,...
                                  population_size,...
                                  number_of_variables)

  
    writerObj = VideoWriter('popevol','MPEG-4');
    writerObj.FrameRate = 6;

    open(writerObj);
    
    hfig = figure;
    hfig.Position = [0 0 1440 1080];

    for k = 1:maximal_generation
    
        o = 1;
        if k>1
            o = k*population_size-population_size+1;
        end
    
        gen = k*population_size;
        pop(o:gen,number_of_variables,:) = pop(o:gen);
        b = bar3( pop(o:gen,:,:));
        set(b,'EdgeColor','black',...
            'LineWidth',0.01,...
            'FaceAlpha', 1);
        colororder("reef")
        xlabel('Variables')
        ylabel('Individuals')
        zlabel('Values')
        title(strcat('Generation: ',int2str(k)))
        fname = 'Population Evolution';
        
        picturewidth = 20; % set this parameter and keep it forever
        hw_ratio = 0.65; % feel free to play with this ratio
        set(findall(hfig,'-property','FontSize'),'FontSize',17) % adjust fontsize to your document
        
        set(findall(hfig,'-property','Box'),'Box','off') % optional
        set(findall(hfig,'-property','Interpreter'),'Interpreter','latex') 
        set(findall(hfig,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
        pbaspect([2 4 1])
        %set(hfig,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
        pos = get(hfig,'Position');
        set(hfig,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])

        

        
        
        view(40, 32)
        grid on    
        
        drawnow
    
        frame = getframe(hfig);
        writeVideo(writerObj,frame);
    
        
    end
    close(writerObj);


[populationEvol] = hfig;

end