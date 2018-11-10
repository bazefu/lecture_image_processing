# 課題４レポート

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

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai4_1.png?raw=true)  
図2 白黒濃淡画像

次に，変換した白黒濃淡画像のヒストグラムを表示する．

imhist(ORG); % ヒストグラムの表示  

白黒濃淡画像のヒストグラムを図３に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai4_2.png?raw=true)  
図3 白黒濃淡画像のヒストグラム

横軸は0-255の階調，縦軸はピクセル数を表している．
ヒストグラム横軸の0-100あたりの山なりは頭髪の部分を，101-200あたりは肌や衣服を，210あたりの急激にピクセル数が多くなっているのは背景部分を表しているものと考えられる．