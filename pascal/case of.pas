var
    name:string;
    number:integer;

begin
    read(name);
    case name of
        'марина':write('хуина');
        'саша':write('хуяша');
        'петя':write('хуетя');
        'даша':write('хуяша');
    end;

    read(number);
    case number of
        0:write('ноль');
        1:write('один');
        2:write('два');
        3:write('три');
        4:write('четыре');
        5:write('пять');
        6:write('шесть');
        7:write('семь');
        8:write('восемь');
        9:write('девять');
    end;
end.
