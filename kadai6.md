# 課題６レポート

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

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai6_1.png?raw=true)  
図2 白黒濃淡画像

課題３で行ったように輝度値が128以上の画素を1，その他を0に変換する．

IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

128による二値化を行った結果を図３に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai6_2.png?raw=true)  
図3 閾値128処理による２値化画像

次に，ディザ法による二値化を図２の白黒濃淡画像に対して行う．  
ディザ法とは，点の密度が大きいところは濃く見え，小さいところは薄く見えるという目の錯覚を利用したハーフトーン処理技術の1つである．
グレースケールの画像を小さいブロックに分割し，それにマスクを掛けて閾値を越えたピクセルを白，下回ったモノを黒というように処理している．

IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

ディザ法によって二値化した結果を図４に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai6_3.png?raw=true)  
図4 ディザ法による２値化画像