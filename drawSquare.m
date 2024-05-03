function [x, y, size, angle,xStart,yStart] = drawSquare(x, y, size, angle,xStart,yStart)
    halfsize = size * .5;
    angle_rad = deg2rad(angle);
    % Calculate the coordinates of the square
    x_coords = [x + halfsize * cos(angle_rad + pi/4), x + halfsize * cos(angle_rad - pi/4),...
                x + halfsize * cos(angle_rad - 3*pi/4), x + halfsize * cos(angle_rad + 3*pi/4)];
    y_coords = [y + halfsize * sin(angle_rad + pi/4), y + halfsize * sin(angle_rad - pi/4),...
                y + halfsize * sin(angle_rad - 3*pi/4), y + halfsize * sin(angle_rad + 3*pi/4)];
    % Draw the square
    fill(x_coords+xStart, y_coords+yStart, 'w');
    hold on
end
