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



