#!/usr/bin/perl

# menutray - schema file

=for comment

    item:       add an item inside the menu               {item => ['command', 'label', 'icon']},
    cat:        add a category inside the menu             {cat => ['name', 'label', 'icon']},
    sep:        horizontal line separator                  {sep => undef},
    beg:        beginning of a submenu                     {beg => ['name', 'icon']},
    end:        end of a submenu                           {end => undef},
    menutray:   generic menu settings                 {menutray => ['label', 'icon']},
    regenerate: regenerate menu                     {regenerate => ['label', 'icon']},
    exit:       quit menu                                 {exit => ['label', 'icon']},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

our $SCHEMA = [
    #          COMMAND                 LABEL                   ICON
    {item => ['xdg-open .',        'Файлы',      'system-file-manager']},
    {item => ['terminator',             'Терминал',          'utilities-terminal']},
    {item => ['xdg-open http://www.google.com',  'Браузер',       'web-browser']},
    {item => ['gmrun',             'Выполнить команду',       'system-run']},

    {sep => undef},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Стандартные', 'applications-utilities']},
    {cat => ['development', 'Разработка', 'applications-development']},
    {cat => ['education',   'Образование',   'applications-science']},
    {cat => ['game',        'Игры',       'applications-games']},
    {cat => ['graphics',    'Графика',    'applications-graphics']},
    {cat => ['audiovideo',  'Мультимедиа',  'applications-multimedia']},
    {cat => ['network',     'Сеть',     'applications-internet']},
    {cat => ['office',      'Офис',      'applications-office']},
    {cat => ['other',       'Другое',       'applications-other']},
    {cat => ['settings',    'Настройки',    'applications-accessories']},
    {cat => ['system',      'Система',      'applications-system']},

    #              LABEL          ICON
    #{beg => ['My submenu',  'submenu-icon']},
              #...some items here...#
    #{end => undef},

    {menutray   => ['Menutray', 'preferences-desktop']},

    {sep        => undef},
    {regenerate => ['Обновить меню', 'gtk-refresh']},
#    {exit       => ['Exit', 'application-exit']},
    {sep        => undef},
    {item => ['gmrun',             'Выключение',       'system-run']},
];
