% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 21st, 2021.

function [ hasTumor ] = detectTumor( brain )
    %     detectTumor Returns whether or not a tumor was found in the image.
    %     brain: a matrix of numbers representing a grayscale image of a 
    %            brain scan. Bright areas may be tumors and need to
    %            be flagged for further testing.
    %            To get test data for this function, you may call the
    %            provided scan_brain() function and pass the value it
    %            returns into this function. However, DO NOT call
    %            scan_brain() in the code for this function itself.
    %     howMany_1: how many values are there in the brain matrix that
    %     equals 1.
    %     hasTumor: detects if the brain image has more than 122 white
    %     spots or no.
    
  
    brain = brain([160:400], [160:372]);
    howMany_1 = length(brain(brain==1));
    hasTumor = (howMany_1>122);
    imshow(brain);
end

