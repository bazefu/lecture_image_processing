% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理を施した画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('Itsumono.png'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示(kadai3_1.png)
pause;

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; %(kadai3_2.png)
pause;

IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar; %(kadai3_3.png)
pause;

IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar; %(kadai3_4.png)
pause;

IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar; %(kadai3_5.png)
