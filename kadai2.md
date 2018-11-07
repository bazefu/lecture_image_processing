# 課題２レポート

標準画像「Itsumono」を原画像とする．この画像は縦168画素，横300画素による長方形のディジタルカラー画像である．

ORG=imread('Itumono.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/org_img.png?raw=true)  
図1 原画像

次に，カラー画像である原画像を白黒濃淡画像へと変更する．

ORG=imread('Itsumono.png'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示

白黒濃淡画像へと変更した結果を図２に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai2_1.png?raw=true)  
図2 白黒濃淡画像

原画像を2階調にするには，0-255の値を２分割すればよい．

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

0-128と129-255に分けた結果を図３に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai2_2.png?raw=true)  
図３ 2階調画像

同様に原画像を4階調にするには，0-255の値を４分割すればよい．すなわち，

IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

とする．4階調画像の結果を図４に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai2_3.png?raw=true)  
図４ 4階調画像

8階調画像は，

IMG0 = ORG>32;  
IMG1 = ORG>64;  
IMG2 = ORG>96;  
IMG3 = ORG>128;  
IMG4 = ORG>160;  
IMG5 = ORG>192;  
IMG6 = ORG>224;  
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 +IMG6;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

となる．8階調画像の結果を図５に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai2_4.png?raw=true)  
図５ 8階調画像

このように階調数にあわせて．0-255の値を分割していけばよい．
