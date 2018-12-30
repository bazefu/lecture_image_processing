# 課題９レポート

標準画像「Itsumono」を原画像とする．この画像は縦168画素，横300画素による長方形のディジタルカラー画像である．

ORG=imread('Itumono.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示  

によって，原画像を読み込み，表示した結果を図１に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/org_img.png?raw=true)  
図1 原画像  

次に，カラー画像である原画像を白黒濃淡画像へと変更する．  

ORG=imread('Itsumono.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラーからグレイへの変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

白黒濃淡画像へと変更した結果を図２に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai10_1.png?raw=true)  
図2 白黒濃淡画像  

次に，３つのエッジ抽出法を用いた結果をそれぞれ示す.  

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

１つ目はプレウィット法によるエッジ抽出結果を図３に示す．  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai10_2.png?raw=true)  
図3 プレウィット法によるエッジ抽出  

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

２つ目はソベル法によるエッジ抽出結果を図４に示す.  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai10_3.png?raw=true)  
図4 ソベル法によるエッジ抽出  

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

３つ目はキャニー法によるエッジ抽出結果を図５に示す.  

![原画像](https://github.com/bazefu/lecture_image_processing/blob/master/image/kadai10_funny.png?raw=true)  
図5 キャニー法によるエッジ抽出  
