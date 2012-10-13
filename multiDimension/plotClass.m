function [] = plotClass(unionFind, position, food)
  [ret, num] = UF_Check(unionFind);
  num
  for iter = 1:size(num)(1)
    plotData = [];
    for i = 1:size(unionFind)(2)
      if UF_Connected(unionFind, num(iter,1), i)
	plotData = [plotData; position(i,:)];
      endif
    endfor
    printf("This is the class of %d\n", num(iter,1));
    if size(plotData)(1) == 1
      printf("Skiped\n");
    else
      plot(0,0,"-");
      hold on
      plot(10,10,"-");
      plot(position(:,1)', position(:,2)', "*");
      plot(plotData(:,1)', plotData(:,2)', "2*");
      hold off
    endif
    pause();
  endfor

endfunction
