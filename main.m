% Finding Shanon entropy and LSE (Local shanon entropy) of plain and cipher images 
%----------------------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference. 
% K C.Jithin, SyamSankar, "Colour image encryption algorithm combining Arnold map, DNA sequence operation, and a Mandelbrot set", 
% Journal of Information Security and Applications, Elsevier, Volume 50, February 2020, DOI: https://doi.org/10.1016/j.jisa.2019.102428

%---------------------------------------------------------------------------------
web('https://docs.google.com/document/d/1AbCxFoUhdOCppM8novgCdOv0F9mqYe7HlBU7yX7Svx0/edit?usp=sharing')
web('published_work.html')
% Demo: 
 a=imread('image.png');
 c=imread('cipherimage.png');
%---------------------------------------------------------------------------
 
   E=entr(a);% Calling entropy fucntion  
   disp('Shanon Entropy of plain image:');
   disp(E);
   
   % R,G,B level Entropy plain image
disp('----------------------------------------------');
   R=a(:,:,1);
   G=a(:,:,2);
   B=a(:,:,3);
   r=entr(R);
   g=entr(G);
   b=entr(B);
   fprintf('Shanon Entropy of plain image -RED    :%f \n',r);
   fprintf('Shanon Entropy of plain image -GREEN  :%f \n',g);
   fprintf('Shanon Entropy of plain image -BLUE   :%f \n',b);
   disp('---------------------------------------------- ');
%----------------------------------------------------------------------------------
pause(1);
   E=entr(c);% Calling entropy fucntion
   disp('Shanon Entropy of cipher image:');
   disp(E);
   disp('----------------------------------------------');
   R=c(:,:,1);
   G=c(:,:,2);
   B=c(:,:,3);
   r=entr(R);
   g=entr(G);
   b=entr(B);
   fprintf('Shanon Entropy of cipher image -RED    :%f \n',r);
   fprintf('Shanon Entropy of cipher image -GREEN  :%f \n',g);
   fprintf('Shanon Entropy of cipher image -BLUE   :%f \n',b);
   disp('----------------------------------------------');
%-----------------------------------------------------------------------------
% Finding Local shanon entropy
%-----------------------------------------------------------------------------
%Note:
   % 1. input square size image  (eg:256*256)
   % 2. Block size of LSE is 1936 (44*44)
   % 3. Total number of block 30 (should be >= 30)
   % 4 If you need to change block size you can cange it on lse function.
%-----------------------------------------------------------------------------
   
 a=rgb2gray(c);
 siz=size(a);
 siz=siz(1);
E=lse(a,siz);% Calling LSE fucntion
   disp('Local Shanon Entropy of cipher image:');
   disp(E);
   disp('----------------------------------------------');
   R=c(:,:,1);
   G=c(:,:,2);
   B=c(:,:,3);
   r=lse(R,siz);
   g=lse(G,siz);
   b=lse(B,siz);
   fprintf('LSE of cipher image -RED    :%f \n',r);
   fprintf('LSE of cipher image -GREEN  :%f \n',g);
   fprintf('LSE of cipher image -BLUE   :%f \n',b);
   disp('----------------------------------------------');


