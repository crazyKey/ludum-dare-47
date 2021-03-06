function createTrack()
    track = {
        stars = {},
        image = love.graphics.newImage("assets/star-small.png"),
    }

    -- just to look like a better dev, I did not wrote the following 94 lines
    -- I generated them with some sneaky JS script

    -- centre left
    table.insert(track.stars, {x = 399, y = 403})
    table.insert(track.stars, {x = 386, y = 374})
    table.insert(track.stars, {x = 368, y = 349})
    table.insert(track.stars, {x = 337, y = 329})
    table.insert(track.stars, {x = 301, y = 308})
    table.insert(track.stars, {x = 259, y = 307})
    table.insert(track.stars, {x = 221, y = 318})
    table.insert(track.stars, {x = 198, y = 346})
    table.insert(track.stars, {x = 186, y = 390})
    table.insert(track.stars, {x = 188, y = 433})
    table.insert(track.stars, {x = 203, y = 469})
    table.insert(track.stars, {x = 242, y = 489})
    table.insert(track.stars, {x = 288, y = 488})
    table.insert(track.stars, {x = 335, y = 474})
    table.insert(track.stars, {x = 369, y = 456})
    table.insert(track.stars, {x = 401, y = 439})

    -- left
    table.insert(track.stars, {x = 443, y = 546})
    table.insert(track.stars, {x = 422, y = 570})
    table.insert(track.stars, {x = 401, y = 594})
    table.insert(track.stars, {x = 370, y = 614})
    table.insert(track.stars, {x = 334, y = 637})
    table.insert(track.stars, {x = 302, y = 649})
    table.insert(track.stars, {x = 264, y = 657})
    table.insert(track.stars, {x = 221, y = 656})
    table.insert(track.stars, {x = 180, y = 646})
    table.insert(track.stars, {x = 138, y = 610})
    table.insert(track.stars, {x = 116, y = 578})
    table.insert(track.stars, {x = 94, y = 538})
    table.insert(track.stars, {x = 78, y = 509})
    table.insert(track.stars, {x = 65, y = 467})
    table.insert(track.stars, {x = 55, y = 431})
    table.insert(track.stars, {x = 48, y = 384})
    table.insert(track.stars, {x = 48, y = 340})
    table.insert(track.stars, {x = 70, y = 279})
    table.insert(track.stars, {x = 90, y = 236})
    table.insert(track.stars, {x = 117, y = 191})
    table.insert(track.stars, {x = 144, y = 150})
    table.insert(track.stars, {x = 187, y = 130})
    table.insert(track.stars, {x = 234, y = 124})
    table.insert(track.stars, {x = 298, y = 129})
    table.insert(track.stars, {x = 345, y = 161})
    table.insert(track.stars, {x = 385, y = 186})
    table.insert(track.stars, {x = 419, y = 219})
    table.insert(track.stars, {x = 449, y = 252})
    table.insert(track.stars, {x = 481, y = 287})

    -- right
    table.insert(track.stars, {x = 515, y = 280})
    table.insert(track.stars, {x = 541, y = 251})
    table.insert(track.stars, {x = 565, y = 229})
    table.insert(track.stars, {x = 596, y = 206})
    table.insert(track.stars, {x = 640, y = 190})
    table.insert(track.stars, {x = 678, y = 173})
    table.insert(track.stars, {x = 697, y = 169})
    table.insert(track.stars, {x = 729, y = 143})
    table.insert(track.stars, {x = 781, y = 136})
    table.insert(track.stars, {x = 822, y = 138})
    table.insert(track.stars, {x = 859, y = 160})
    table.insert(track.stars, {x = 881, y = 180})
    table.insert(track.stars, {x = 914, y = 232})
    table.insert(track.stars, {x = 925, y = 268})
    table.insert(track.stars, {x = 927, y = 309})
    table.insert(track.stars, {x = 926, y = 357})
    table.insert(track.stars, {x = 924, y = 401})
    table.insert(track.stars, {x = 920, y = 442})
    table.insert(track.stars, {x = 913, y = 490})
    table.insert(track.stars, {x = 905, y = 528})
    table.insert(track.stars, {x = 893, y = 573})
    table.insert(track.stars, {x = 873, y = 615})
    table.insert(track.stars, {x = 844, y = 654})
    table.insert(track.stars, {x = 784, y = 694})
    table.insert(track.stars, {x = 733, y = 710})
    table.insert(track.stars, {x = 681, y = 711})
    table.insert(track.stars, {x = 631, y = 700})
    table.insert(track.stars, {x = 595, y = 663})
    table.insert(track.stars, {x = 577, y = 631})
    table.insert(track.stars, {x = 558, y = 601})
    table.insert(track.stars, {x = 537, y = 569})
    table.insert(track.stars, {x = 513, y = 551})
    table.insert(track.stars, {x = 482, y = 529})

    -- centre right
    table.insert(track.stars, {x = 587, y = 400})
    table.insert(track.stars, {x = 612, y = 367})
    table.insert(track.stars, {x = 644, y = 344})
    table.insert(track.stars, {x = 677, y = 335})
    table.insert(track.stars, {x = 711, y = 336})
    table.insert(track.stars, {x = 750, y = 351})
    table.insert(track.stars, {x = 792, y = 384})
    table.insert(track.stars, {x = 804, y = 419})
    table.insert(track.stars, {x = 799, y = 453})
    table.insert(track.stars, {x = 780, y = 467})
    table.insert(track.stars, {x = 741, y = 486})
    table.insert(track.stars, {x = 704, y = 492})
    table.insert(track.stars, {x = 670, y = 494})
    table.insert(track.stars, {x = 636, y = 488})
    table.insert(track.stars, {x = 606, y = 472})
    table.insert(track.stars, {x = 579, y = 439})

    for i=1, #track.stars do
        game.world:add(track.stars[i], track.stars[i].x, track.stars[i].y, 18, 17)
    end

    return track
end

function drawTrack(track)
    for i=1, #track.stars do
        love.graphics.draw(track.image, track.stars[i].x, track.stars[i].y, 0, 1.75, 1.75, 4, 4)
    end
end