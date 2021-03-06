clear all;

% Finding distances based on latitude and longitude using the Haversine Formula 
% For more information visit :http://andrew.hedges.name/experiments/haversine/
% Author/s : Anthony Val C. Camposano, Jenny Lynn Almerol, Kahlil Fredirick Chui
% Date    : 1/15/2016

data = xlsread('D:\Complex System\Data\Bohol_Earthquake_500KM_rawData.xls','L2:M9802'); 
%total number of points: 9802

R = 6373; % Earth's Radius

for i = 1:length(data)
    dMatrix(i+1,1) = i;
    dMatrix(1,i+1) = i;
    
    for j = 1:length(data)
    % X = longitude, first column 
    % Y = latitude, second column
    
    % 1st point
    lon1 = data(i,1)*pi()/180;
    lat1 = data(i,2)*pi()/180;
    % 2nd point
    lon2 = data(j,1)*pi()/180;
    lat2 = data(j,2)*pi()/180;
    
    dlon = (lon2 - lon1);
    dlat = (lat2 - lat1);
    
    % Haversine Formula
    a = (sin(dlat/2))^2 + cos(lat1) * cos(lat2) * (sin(dlon/2))^2;
    c = 2 * atan2(sqrt(a), sqrt(1-a)); 
    d = R * c;
    
    nD = d/125; 
    if nD > 1
        dMatrix(i+1,j+1) = 0;
    else
        dMatrix(i+1,j+1) = nD;
    end 
    
    end 
    
end 


% csvwrite('D:\Complex System\BoholEarthquake_distMatrix_500km.dat',dMatrix);
