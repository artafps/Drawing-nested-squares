function [] =  drawSquarePattern()
    % Initialize figure
    figure;
    hold on;
    axis equal;
    axis([-400 400 -400 400]);
    grid off;
    title('Rotated Squares');
    
    % Draw the main square
    drawSquare(0, 0, 700, 0,247.5,247.5);
        drawSquare(0, 0, 700, 0,-247.5,-247.5);
        drawSquare(0, 0, 700, 0,-247.5,247.5);
        drawSquare(0, 0, 700,0,247.5,-247.5);

    % Draw the smaller squares
    n=12.5;
    for i = 0:100
        size = 700 * power(1/1.2, i+1);
        drawSquare(0, 0, size, n,247.5,247.5);
        drawSquare(0, 0, size, n,-247.5,-247.5);
        drawSquare(0, 0, size, n,-247.5,247.5);
        drawSquare(0, 0, size, n,247.5,-247.5);
        n = n+ 12.5;
    end
end

