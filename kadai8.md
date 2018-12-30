# 課題８レポート

標準画像「Itsumono」を原画像とする．この画像は縦168画素，横300画素による長方形のディジタルカラー画像である．

ORG=imread('Itumono.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示  

によって，原画像を読み込み，表示した結果を図１に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/org_img.png?raw=true)  
図1 原画像  

次に，カラー画像である原画像を白黒濃淡画像へと変更する．  

ORG=imread('Itsumono.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

白黒濃淡画像へと変更した結果を図２に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai8_1.png?raw=true)  
図2 白黒濃淡画像  

IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

次に，画像を128を閾値として二値化した結果を図３に示す.  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai8_2.png?raw=true)  
図3 閾値１２８で二値化した画像  

IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示

図３の画像の連結成分にラベルをつけた結果を図４に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai8_3.png?raw=true)  
図4 連結成分にラベルを付けた画像  
