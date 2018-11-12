# 課題３レポート

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

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai3_1.png?raw=true)  
図2 白黒濃淡画像

輝度値が64以上の画素を1，その他を0に変換する．

IMG = ORG > 64;  
imagesc(IMG); colormap(gray); colorbar;

輝度値が64以上の画素を1と設定した結果を図３に示す．
以下，閾値を～と設定，と記述する．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai3_2.png?raw=true)  
図3 閾値を64と設定した画像

他パターンは64の値を変えればよい．閾値を残り３パターン設定した結果を図４～６に示す．

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai3_3.png?raw=true)  
図4 閾値を96と設定した画像

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai3_4.png?raw=true)  
図5 閾値を128と設定した画像

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai3_fear.png?raw=true)  
図4 閾値を192と設定した画像
