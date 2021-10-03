image1 = imread('image1.png');
image2 = imread('image2.png');

p = rgb2gray(image1);
q = rgb2gray(image2);

figure(1); imshow(p);
figure(2); imshow(q);

r = p;
[kolom, baris] = size(r);

for x = 1 : kolom
    for y = 1 : baris
        if q(x, y) ~= 0
            r(x, y) = q(x, y);
        end
    end
end

figure(3); imshow(r);

f = p;

for x = 1 : kolom
    for y = 1 : baris
        if f(x, y) ~= 0
            f(x, y) = q(x, y);
        end
    end
end

figure(4); imshow(f);

bw1 = p > 55;
bw2 = q > 140;

figure(5); imshow(bw1);
figure(6); imshow(bw2);

d = bw1;

for x = 1 : kolom
    for y = 1 : baris
        if d(x, y) == 0
            d(x, y) = 1;
        else
            d(x, y) = 0;
        end
    end
end

figure(7); imshow(d);

s = bw1;

for x = 1 : kolom
    for y = 1 : baris
        if bw2 (x, y) ~= 0
            if s (x, y) == 0
                s (x, y) = 1;
            else
                s (x, y) = 0;
            end
        end
    end
end

figure(8); imshow(s);