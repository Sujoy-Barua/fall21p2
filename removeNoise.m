% Sujoy Barua (sujoysb)
% Lauren Berry (lkberry)
% Section 020, Sep 21st, 2021.

function [ rad ] = removeNoise( rad, n )
    %   removeNoise Removes noise from a matrix of radiation values by
    %       applying an nxn mean filter three times.
    %      n: The size of the filter (e.g. if n=3, use a 3x3 filter)
    %      h: It takes in n, creates a n x n
    %        matrix, and divides each value by n^2 to create the filter
    %        matrix to be used in the imfilter function.
    %	   rad: a matrix of numbers representing the radiation
    %        measurements from the scanner.
    %        NOTE: A matrix obtained from a call to the scan_radiation()
    %        may be used as an input argument when calling this function,
    %        but you should NOT call scan_radiation() inside of this
    %        function!
    
    h = (ones( n ))/( n^2 );
    rad = imfilter( rad, h, 'replicate' );
    rad = imfilter( rad, h, 'replicate' );
    rad = imfilter( rad, h, 'replicate' );
end
