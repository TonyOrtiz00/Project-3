% Creating a array for modifying a logo 
logo = imread("sunderland-afc-logo-png-transparent.png");
red = logo(:,:,1);
blue = logo(:,:,2);
green = logo(:,:,3);
% Using subplot to show image 
subplot(2,2,1)
imshow("sunderland-afc-logo-png-transparent.png")
% Modifying the black colors 
black = red<50 & blue<50 & green<50; 
red(black) = 0; 
green(black) = 255; 
blue(black) = 0; 
newlogo(:,:,1) = red;
newlogo(:,:,2) = green;
newlogo(:,:,3) = blue;
% Display new logo 
subplot(2,2,2)
imshow(newlogo)
% Modifying the red colors
red = red<100 & blue<100 & green<100; 
red(red) = 102; 
green(red) = 102; 
blue(red) = 255; 
newlogo(:,:,1) = red;
newlogo(:,:,2) = green;
newlogo(:,:,3) = blue;
% Display new logos 
subplot(2,2,3)
imshow(newlogo)
% Modifying the red colors
green = red<100 & blue<100 & green<100; 
red(green) = 255; 
green(green) = 102; 
blue(green) = 255; 
newlogo(:,:,1) = red;
newlogo(:,:,2) = green;
newlogo(:,:,3) = blue;
% Display new logos 
subplot(2,2,4)
imshow(newlogo)