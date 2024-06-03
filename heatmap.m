% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 21st, 2021.
 
function [ img ] = heatmap( img, rad )
    %heatmap Generates a heatmap image by using values from rad to set
    %  values in the hue channel for img. Hue values vary smoothly
    %  depending on the corresponding radiation level.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It has the same width and height as the img parameter.
    %     sat: saturation channel
    %     hue: hue channel
    
    img = rgb2hsv(img);
    hue = img(:,:,1);
    hue(:) = 0.7 - (0.7 .* (rad ./ 100.0));
    img(:,:,1) = hue;
    sat = img(:,:,2);
    sat(:) = 1;
    img(:,:,2) = sat;
    img = hsv2rgb(img);
 
end
