# 課題９レポート

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

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai9_1.png?raw=true)  
図2 白黒濃淡画像  

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

次に，画像にノイズを付与した結果を図３に示す.  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai9_2.png?raw=true)  
図3 ノイズを付与した画像  

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

平滑化フィルタによってノイズ除去を行った結果を図４に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai9_3.png?raw=true)  
図4 平滑化フィルタによるノイズ除去  


IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

次に，メディアンフィルタによってノイズ除去を行った結果を図５に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai9_4.png?raw=true)  
図5 メディアンフィルタによるノイズ除去  

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計
IMG = filter2(f,IMG,'same'); % フィルタの適用
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

最後にフィルタを設計し，それを適用した結果を図6示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai9_5.png?raw=true)  
図5 設計フィルタによるノイズ除去  

