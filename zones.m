% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 21st, 2021.

function [ img ] = zones( img, rad )
    %   zones Generates an image colored according to radiation threat 
    %       zones. Values from rad are used to determine the zone, and the hue
    %       value in img is set accordingly.
    %   img: a 3-dimensional matrix of numbers representing an image in
    %       RGB (red-green-blue) format, which forms the background for
    %       to which the heatmap colors are applied.
    %   rad: a matrix of numbers representing the radiation
    %       measurements, between 0 and 100 millisieverts.
    %       It is has the same width and height as the img parameter.
    
        
    img = rgb2hsv(img);
    hue = img(:,:,1);
    hue(rad>=0 & rad<20) = 0.6;
    hue(rad>=20 & rad<50) = 0.4;
    hue(rad>=50 & rad<70) = 0.2;
    hue(rad>=70 & rad<90) = 0.1;
    hue(rad>=90) = 0;
    img(:,:,1) = hue;
    sat = img(:,:,2);
    sat(:) = 1;
    img(:,:,2) = sat;
    img = hsv2rgb(img);
 


end

