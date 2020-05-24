function mdview --wraps lowdown
        lowdown -sTms $argv | pdfroff -tik -Kutf8 -mspdf | zathura -
end
