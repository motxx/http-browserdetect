use strict;
use warnings;

use 5.006;

package HTTP::BrowserDetect;

use vars qw(@ALL_TESTS);

# Operating Systems
our @OS_TESTS = qw(
    windows  mac     os2
    unix     linux   vms
    bsd      amiga
    bb10     rimtabletos
    chromeos ios
    firefoxos
);

# More precise Windows
our @WINDOWS_TESTS = qw(
    win16      win3x        win31
    win95      win98        winnt
    winme      win32        win2k
    winxp      win2k3       winvista
    win7       win8         win8_0
    win8_1     wince        winphone
    winphone7  winphone7_5  winphone8
);

# More precise Mac
our @MAC_TESTS = qw(
    macosx mac68k macppc
);

# More precise Unix
our @UNIX_TESTS = qw(
    sun     sun4     sun5
    suni86  irix     irix5
    irix6   hpux     hpux9
    hpux10  aix      aix1
    aix2    aix3     aix4
    sco     unixware mpras
    reliant dec      sinix
);

# More precise BSDs
our @BSD_TESTS = qw(
    freebsd
);

# Gaming devices
our @GAMING_TESTS = qw(
    ps3gameos pspgameos
);

# Device related tests
our @DEVICE_TESTS = qw(
    android audrey blackberry dsi iopener ipad
    iphone ipod kindle n3ds palm ps3 psp wap webos
    mobile tablet
);

# Browsers
our @BROWSER_TESTS = qw(
    mosaic         netscape    firefox
    chrome         safari      ie
    opera          lynx        links
    elinks         neoplanet   neoplanet2
    avantgo        emacs       mozilla
    konqueror      realplayer  netfront
    mobile_safari  obigo       aol
    lotusnotes     staroffice  icab
    webtv          browsex     silk
    applecoremedia galeon      seamonkey
    epiphany       ucbrowser   dalvik
);

our @IE_TESTS = qw(
    ie3         ie4         ie4up
    ie5         ie5up       ie55
    ie55up      ie6         ie7
    ie8         ie9         ie10
    ie11
    ie_compat_mode
);

our @OPERA_TESTS = qw(
    opera3      opera4     opera5
    opera6      opera7
);

our @AOL_TESTS = qw(
    aol3        aol4
    aol5        aol6
);

our @NETSCAPE_TESTS = qw(
    nav2   nav3   nav4
    nav4up nav45  nav45up
    nav6   nav6up navgold
);

# Firefox variants
our @FIREFOX_TESTS = qw(
    firebird    iceweasel   phoenix
    namoroka
);

# Engine tests
our @ENGINE_TESTS = qw(
    gecko       trident     webkit
    presto      khtml
);

our @ROBOT_TESTS = qw(
    puf             curl           wget
    getright        robot          slurp
    yahoo           mj12bot        ahrefs
    altavista       lycos          infoseek
    lwp             webcrawler     linkexchange
    googlemobile    msn            msnmobile
    facebook        baidu          googleadsbot
    askjeeves       googleadsense  googlebotvideo
    googlebotnews   googlebotimage google
    linkchecker     yandeximages   specialarchiver
    yandex          java           lib
    indy            golib          rubylib
    apache
);

our @MISC_TESTS = qw(
    dotnet      x11
);

push @ALL_TESTS,
    (
    @OS_TESTS,      @WINDOWS_TESTS,
    @MAC_TESTS,     @UNIX_TESTS,
    @BSD_TESTS,     @GAMING_TESTS,
    @DEVICE_TESTS,  @BROWSER_TESTS,
    @IE_TESTS,      @OPERA_TESTS,
    @AOL_TESTS,     @NETSCAPE_TESTS,
    @FIREFOX_TESTS, @ENGINE_TESTS,
    @ROBOT_TESTS,   @MISC_TESTS,
    );

sub _all_tests {
    return @ALL_TESTS;
}

# https://support.google.com/webmasters/answer/1061943?hl=en

my %ROBOT_NAMES = (
    ahrefs          => 'Ahrefs',
    altavista       => 'AltaVista',
    apache          => 'Apache http client',
    askjeeves       => 'AskJeeves',
    baidu           => 'Baidu Spider',
    curl            => 'curl',
    facebook        => 'Facebook',
    getright        => 'GetRight',
    google          => 'Googlebot',
    googleadsbot    => 'Google AdsBot',
    googleadsense   => 'Google AdSense',
    googlebotimage  => 'Googlebot Images',
    googlebotnews   => 'Googlebot News',
    googlebotvideo  => 'Googlebot Video',
    googlemobile    => 'Googlebot Mobile',
    golib           => 'Go language http library',
    indy            => 'Indy Library',
    infoseek        => 'InfoSeek',
    java            => 'Java',
    linkchecker     => 'LinkChecker',
    linkexchange    => 'LinkExchange',
    lwp             => 'LWP::UserAgent',
    lycos           => 'Lycos',
    mj12bot         => 'Majestic-12 DSearch',
    msn             => 'MSN',
    msnmobile       => 'MSN Mobile',
    puf             => 'puf',
    robot           => 'robot',
    rubylib         => 'Ruby http library',
    slurp           => 'Yahoo! Slurp',
    specialarchiver => 'archive.org_bot',
    webcrawler      => 'WebCrawler',
    wget            => 'wget',
    yahoo           => 'Yahoo',
    yandex          => 'Yandex',
    yandeximages    => 'YandexImages',
);

my %BROWSER_NAMES = (
    aol            => 'AOL Browser',
    applecoremedia => 'AppleCoreMedia',
    blackberry     => 'BlackBerry',
    browsex        => 'BrowseX',
    chrome         => 'Chrome',
    curl           => 'curl',
    dalvik         => 'Dalvik',
    dsi            => 'Nintendo DSi',
    elinks         => 'ELinks',
    epiphany       => 'Epiphany',
    firefox        => 'Firefox',
    galeon         => 'Galeon',
    icab           => 'iCab',
    iceweasel      => 'IceWeasel',
    ie             => 'MSIE',
    konqueror      => 'Konqueror',
    links          => 'Links',
    lotusnotes     => 'Lotus Notes',
    lynx           => 'Lynx',
    mobile_safari  => 'Mobile Safari',
    mosaic         => 'Mosaic',
    mozilla        => 'Mozilla',
    n3ds           => 'Nintendo 3DS',
    netfront       => 'NetFront',
    netscape       => 'Netscape',
    obigo          => 'Obigo',
    opera          => 'Opera',
    puf            => 'puf',
    realplayer     => 'RealPlayer',
    safari         => 'Safari',
    seamonkey      => 'SeaMonkey',
    silk           => 'Silk',
    staroffice     => 'StarOffice',
    ucbrowser      => 'UCBrowser',
    webtv          => 'WebTV',
);

# Device names
my %DEVICE_NAMES = (
    android    => 'Android',
    audrey     => 'Audrey',
    blackberry => 'BlackBerry',
    dsi        => 'Nintendo DSi',
    iopener    => 'iopener',
    ipad       => 'iPad',
    iphone     => 'iPhone',
    ipod       => 'iPod',
    kindle     => 'Amazon Kindle',
    n3ds       => 'Nintendo 3DS',
    palm       => 'Palm',
    ps3        => 'Sony PlayStation 3',
    psp        => 'Sony PlayStation Portable',
    wap        => 'WAP capable phone',
    webos      => 'webOS',
);

my %OS_NAMES = (
    amiga       => 'Amiga',
    android     => 'Android',
    bb10        => 'BlackBerry 10',
    chromeos    => 'Chrome OS',
    firefoxos   => 'Firefox OS',
    ios         => 'iOS',
    linux       => 'Linux',
    mac         => 'Mac',
    macosx      => 'Mac OS X',
    os2         => 'OS/2',
    ps3gameos   => 'Playstation 3 GameOS',
    pspgameos   => 'Playstation Portable GameOS',
    rimtabletos => 'RIM Tablet OS',
    unix        => 'Unix',
    vms         => 'VMS',
    win2k       => 'Win2k',
    win2k3      => 'Win2k3',
    win3x       => 'Win3x',
    win7        => 'Win7',
    win8        => 'Win8',
    win8_0      => 'Win8.0',
    win8_1      => 'Win8.1',
    win95       => 'Win95',
    win98       => 'Win98',
    winme       => 'WinME',
    winnt       => 'WinNT',
    winphone    => 'Windows Phone',
    winvista    => 'WinVista',
    winxp       => 'WinXP',
);

# Safari build -> version map for versions prior to 3.0
# (since then, version appears in the user-agent string)

my %safari_build_to_version = qw(
    48      0.8
    51      0.8.1
    60      0.8.2
    73      0.9
    74      1.0b2v74
    85      1.0
    85.7    1.0.2
    85.8    1.0.3
    100     1.1
    100.1   1.1.1
    125     1.2
    125.1   1.2.1
    125.7   1.2.2
    125.9   1.2.3
    125.11  1.2.4
    312     1.3
    312.3   1.3.1
    312.5   1.3.2
    412     2.0
    412.5   2.0.1
    416.12  2.0.2
    417.8   2.0.3
    419.3   2.0.4
);

#######################################################################################################
# BROWSER OBJECT

my $default = undef;

sub new {
    my ( $class, $user_agent ) = @_;

    my $self = {};
    bless $self, $class;

    unless ( defined $user_agent ) {
        $user_agent = $ENV{'HTTP_USER_AGENT'};
    }

    $self->{user_agent} = $user_agent;
    $self->_init_core;

    return $self;
}

### Accessors for computed-on-demand test attributes

foreach my $test ( @ENGINE_TESTS, @MISC_TESTS ) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        return $self->{tests}->{$test} || 0;
    };
}

foreach my $test (
    @OS_TESTS,  @WINDOWS_TESTS, @MAC_TESTS, @UNIX_TESTS,
    @BSD_TESTS, @GAMING_TESTS
    ) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        $self->_init_os() unless $self->{os_tests};
        return $self->{os_tests}->{$test} || 0;
    };
}

foreach my $test ( @BROWSER_TESTS, @FIREFOX_TESTS ) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        return $self->{browser_tests}->{$test} || 0;
    };
}

foreach my $test (@ROBOT_TESTS) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        $self->_init_robots() unless $self->{robot_tests};
        return $self->{robot_tests}->{$test} || 0;
    };
}

foreach my $test (
    @NETSCAPE_TESTS, @IE_TESTS, @AOL_TESTS,
    @OPERA_TESTS
    ) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        $self->_init_version() unless $self->{version_tests};
        return $self->{version_tests}->{$test} || 0;
    };
}

foreach my $test (@DEVICE_TESTS) {
    no strict 'refs';
    *{$test} = sub {
        my ($self) = @_;
        $self->_init_device() unless $self->{device_tests};
        return $self->{device_tests}->{$test} || 0;
    };
}

sub user_agent {
    my ( $self, $user_agent ) = @_;
    if ( defined($user_agent) ) {
        die
            "Calling HTTP::BrowserDetect::user_agent() with an argument is no longer allowed; please use new().";
    }
    else {
        return $self->{user_agent};
    }
}

### Code for initializing various pieces of the object. Since it would
### be needlessly slow if we examined every user agent for every piece
### of information we might possibly need, we only initialize things
### when they're actually queried about. Specifically:
###
### _init_core() sets up:
###     $self->{browser_tests}
###     $self->{browser}
###     $self->{browser_string}
###     $self->{tests}
###     $self->{engine_version}
###     $self->{realplayer_version}
###
### _init_version() sets up:
###     $self->{version_tests}
###     $self->{major}
###     $self->{minor}
###     $self->{beta}
###     $self->{realplayer_version}
###
### _init_os() sets up:
###     $self->{os}
###     $self->{os_string}
###     $self->{os_tests}
###     $self->{os_version}
###
### _init_os_version() sets up:
###     $self->{os_version}
###
### _init_device() sets up:
###     $self->{device_tests}
###     $self->{device}
###     $self->{device_string}
###
### _init_robots() sets up:
###     $self->{robot}
###     $self->{robot_tests}
###     $self->{robot_string}
###     $self->{robot_fragment}
###

# Private method -- Set up the basics (browser and misc attributes)
# for a new user-agent string
sub _init_core {
    my ( $self, $new_ua ) = @_;

    my $ua = lc $self->{user_agent};

    # These get filled in immediately
    $self->{tests}         = {};
    $self->{browser_tests} = {};

    my $tests          = $self->{tests};
    my $browser_tests  = $self->{browser_tests};
    my $browser        = undef;
    my $browser_string = undef;

    # Detect engine
    $self->{engine_version} = undef;

    if ( $ua =~ /trident\/([\w\.\d]*)/ ) {
        $tests->{trident}       = 1;
        $self->{engine_version} = $1;
    }
    elsif ( index( $ua, "gecko" ) != -1 && index( $ua, "like gecko" ) == -1 )
    {
        $tests->{gecko} = 1;
        if ( $ua =~ /\([^)]*rv:([\w.\d]*)/ ) {
            $self->{engine_version} = $1;
        }
    }
    elsif ( $ua =~ m{applewebkit/([\d.\+]+)} ) {
        $tests->{webkit}        = 1;
        $self->{engine_version} = $1;
    }
    elsif ( $ua =~ m{presto/([\d.]+)} ) {
        $tests->{presto}        = 1;
        $self->{engine_version} = $1;
    }
    elsif ( $ua =~ m{khtml/([\d.]+)} ) {
        $tests->{khtml}         = 1;
        $self->{engine_version} = $1;
    }

    # Detect browser

    if ( index( $ua, "galeon" ) != -1 ) {

        # Needs to go above firefox

        $browser = "galeon";
        $browser_tests->{galeon} = 1;
    }
    elsif ( index( $ua, "epiphany" ) != -1 ) {

        # Needs to go above firefox + mozilla

        $browser = "epiphany";
        $browser_tests->{epiphany} = 1;
    }
    elsif (
        $ua =~ m{
                (firebird|iceweasel|phoenix|namoroka|firefox)
                \/
                ( [^.]* )           # Major version number is everything before first dot
                \.                  # The first dot
                ( [\d]* )           # Minor version nnumber is digits after first dot
            }xo
        && index( $ua, "not firefox" ) == -1
        )    # Hack for Yahoo Slurp
    {
        # Browser is Firefox, possibly under an alternate name

        $browser        = 'firefox';
        $browser_string = ucfirst $1;

        $browser_tests->{$1} = 1;
        $browser_tests->{firefox} = 1;
    }
    elsif ( $ua =~ m{opera|opr\/} ) {

        # Browser is Opera

        $browser = 'opera';
        $browser_tests->{opera} = 1;
    }
    elsif ($tests->{trident}
        || index( $ua, "msie" ) != -1
        || index( $ua, 'microsoft internet explorer' ) != -1 ) {

        # Browser is MSIE (possibly AOL branded)

        $browser = 'ie';
        $browser_tests->{ie} = 1;

        if (   index( $ua, 'aol' ) != -1
	       || index( $ua, 'america online browser' ) != -1 ) {
            $browser_string = 'AOL Browser';
            $browser_tests->{aol} = 1;
        }
	# Disabled for now -- need to figure out how to deal with version numbers
	#elsif ( index ( $ua, 'acoobrowser' ) != -1 ) {
	#    $browser_string = 'Acoo Browser';
	#}
	#elsif ( index( $ua, 'avant' ) != -1 ) {
	#    $browser_string = 'Avant Browser';
	#}
	#elsif ( index( $ua, 'crazy browser' ) != -1 ) {
	#    $browser_string = 'Crazy Browser';
	#}
	#elsif ( index( $ua, 'deepnet explorer' ) != -1 ) {
	#    $browser_string = 'Deepnet Explorer';
	#}
	#elsif ( index( $ua, 'maxthon' ) != -1 ) {
	#    $browser_string = 'Maxthon';
	#}
    }
    elsif ( index( $ua, "silk" ) != -1 ) {

        # Has to go above Chrome, it includes "like Chrome/"

        $browser = 'silk';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "chrome/" ) != -1
	|| index( $ua, "crios" ) != -1 ) {

        # Browser is Chrome

        $browser = 'chrome';
        $browser_tests->{chrome} = 1;

        if ( index( $ua, "chromium" ) != -1 ) {
            $browser_string = "Chromium";
        }
    }
    elsif (index( $ua, "blackberry" ) != -1
        || index( $ua, "bb10" ) != -1
        || index( $ua, "rim tablet os" ) != -1 ) {

        # Needs to go above the Safari check
        $browser = 'blackberry';    # test gets set during device check
    }
    elsif (( index( $ua, "safari" ) != -1 )
        || ( index( $ua, "applewebkit" ) != -1 ) ) {

        # Browser is Safari

        $browser_tests->{safari} = 1;
        $browser = 'safari';
        if ( index( $ua, " mobile safari/" ) != -1
	    || index( $ua, "mobilesafari" ) != -1 )
	{
            $browser_string = 'Mobile Safari';
            $browser_tests->{mobile_safari} = 1;
        }
        if ( index( $ua, "puffin" ) != -1 ) {
            $browser_string = "Puffin";
        }
    }
    elsif (!$tests->{trident}
        && index( $ua, "mozilla" ) != -1
        && index( $ua, "msie" ) == -1
        && index( $ua, "spoofer" ) == -1
        && index( $ua, "compatible" ) == -1
        && index( $ua, "webtv" ) == -1
        && index( $ua, "hotjava" ) == -1
        && index( $ua, "nintendo" ) == -1
        && index( $ua, "playstation 3" ) == -1
        && index( $ua, "playstation portable" ) == -1
        && index( $ua, "browsex" ) == -1 ) {

        # Browser is a Gecko-powered Netscape (i.e. Mozilla) version

        $browser = 'mozilla';
        if ( index( $ua, "netscape" ) != -1
            || !$tests->{gecko} ) {
            $browser = "netscape";
        }
        elsif ( index( $ua, "seamonkey" ) != -1 ) {
            $browser = 'seamonkey';
        }
        $browser_tests->{$browser} = 1;
        $browser_tests->{netscape} = 1;
        $browser_tests->{mozilla}  = ( $tests->{gecko} );
    }
    elsif ( index( $ua, "neoplanet" ) != -1 ) {

        # Browser is Neoplanet

        $browser                    = 'ie';
        $browser_tests->{$browser}  = 1;
        $browser_tests->{neoplanet} = 1;
        $browser_tests->{neoplanet2} = 1 if ( index( $ua, "2." ) != -1 );
    }

    ## Long series of unlikely browsers
    elsif ( index( $ua, "staroffice" ) != -1 ) {
        $browser = 'staroffice';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "icab" ) != -1 ) {
        $browser = 'icab';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "lotus-notes" ) != -1 ) {
        $browser = 'lotusnotes';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "konqueror" ) != -1 ) {
        $browser = 'konqueror';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "lynx" ) != -1 ) {
        $browser = 'lynx';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "elinks" ) != -1 ) {
        $browser = 'elinks';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "links" ) != -1 ) {
        $browser = 'links';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "webtv" ) != -1 ) {
        $browser = 'webtv';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "mosaic" ) != -1 ) {
        $browser = 'mosaic';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, 'emacs' ) != -1 ) {
        $browser = 'emacs';
        $browser_tests->{$browser} = 1;
    }
    elsif (index( $ua, "playstation 3" ) != -1
        || index( $ua, "playstation portable" ) != -1
        || index( $ua, "netfront" ) != -1 ) {
        $browser = 'netfront';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "nintendo 3ds" ) != -1 ) {
        $browser = 'n3ds';    # Test gets set during device check
    }
    elsif ( index( $ua, "nintendo dsi" ) != -1 ) {
        $browser = 'dsi';     # Test gets set during device check
    }
    elsif ( index( $ua, "obigo" ) != -1 ) {
        $browser = 'obigo';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "browsex" ) != -1 ) {
        $browser = 'browsex';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "libcurl" ) != -1 ) {
        $browser = 'curl';    # Test gets set during robot check
    }
    elsif ( index( $ua, "puf/" ) != -1 ) {
        $browser = 'puf';     # Test gets set during robot check
    }
    elsif ( index( $ua, "applecoremedia/" ) != -1 ) {
        $browser = 'applecoremedia';
        $browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "dalvik" ) != -1 ) {
	$browser = 'dalvik';
	$browser_tests->{$browser} = 1;
    }
    elsif ( index( $ua, "ucbrowser" ) != -1 ) {
	$browser = 'ucbrowser';
	$browser_tests->{$browser} = 1;
    }

    $self->{browser} = $browser;
    $self->{browser_string} = $browser_string || $BROWSER_NAMES{$browser}
        if defined($browser);

    # Other random tests

    $tests->{x11}    = 1 if index( $ua, "x11" ) != -1;
    $tests->{dotnet} = 1 if index( $ua, ".net clr" ) != -1;

    if ( index( $ua, "realplayer" ) != -1 ) {

        # Hack for Realplayer -- fix the version and "real" browser

        $self->_init_version;  # Set appropriate tests for whatever the "real"
                               # browser is.

        # Now set the browser to Realplayer.
        $self->{browser}             = 'realplayer';
        $self->{browser_string}      = 'RealPlayer';
        $browser_tests->{realplayer} = 1;

        # Now override the version with the Realplayer version (but leave
        # alone the tests we already set, which might have been based on the
        # "real" browser's version).
        $self->{realplayer_version} = undef;

        if ( $ua =~ /realplayer\/([\d+\.]+)/ ) {
            $self->{realplayer_version} = $1;
            ( $self->{major}, $self->{minor} )
                = split( /\./, $self->{realplayer_version} );
            $self->{minor} = ".$self->{minor}" if defined( $self->{minor} );
        }
        elsif ( $ua =~ /realplayer\s(\w+)/ ) {
            $self->{realplayer_version} = $1;
        }
    }

    if ( index( $ua, "(r1 " ) != -1 ) {

        # Realplayer plugin -- don't override browser but do set property
        $browser_tests->{realplayer} = 1;
    }

}

# Any of these fragments within a user-agent generally indicates it's
# a robot. If we find one, we store it in $self->{robot_fragment}, and
# if the user later asks for the robot string, we return the string
# in the immediate area of the fragment.
my @ROBOT_FRAGMENTS = qw(
    agent
    appender
    babya
    checker
    bot
    copy
    crawl
    explorador
    fetch
    find
    ia_archive
    index
    netcraft
    reap
    resolver
    sleuth
    scan
    service
    spider
    tiscali
    validator
    webcapture
    worm
    zyborg
);

sub _init_robots {
    my $self = shift;

    my $ua            = lc $self->{user_agent};
    my $tests         = $self->{tests};
    my $browser_tests = $self->{browser_tests};

    my $robot_tests = $self->{robot_tests} = {};
    my $r = undef;

    if ( index( $ua, "libwww-perl" ) != -1 || index( $ua, "lwp-" ) != -1 ) {
        $r = 'lwp';
        $robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "slurp" ) != -1 ) {
        $r = 'slurp';
        $robot_tests->{yahoo} = 1;
    }
    elsif (index( $ua, "yahoo" ) != -1
        && index( $ua, 'jp.co.yahoo.android' ) == -1 ) {
        $r = 'yahoo';
    }
    elsif (index( $ua, "msnbot-mobile" ) != -1
        || index( $ua, "bingbot-mobile" ) != -1 ) {
        $r = 'msnmobile';
        $robot_tests->{msn} = 1;
    }
    elsif ( index( $ua, "msnbot" ) != -1 || index( $ua, "bingbot" ) != -1 ) {
        $r = 'msn';
    }
    elsif ( index( $ua, "ahrefsbot" ) != -1 ) {
        $r = 'ahrefs';
    }
    elsif ( index( $ua, "altavista" ) != -1 ) {
        $r = 'altavista';
    }
    elsif ( index( $ua, "apache-httpclient" ) != -1 ) {
	$r = 'apache';
    }
    elsif ( index( $ua, "ask jeeves/teoma" ) != -1 ) {
        $r = 'askjeeves';
    }
    elsif ( index( $ua, "baiduspider" ) != -1 ) {
        $r = 'baidu';
    }
    elsif ( index( $ua, "libcurl" ) != -1 ) {
        $r = 'curl';
        $robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "facebookexternalhit" ) != -1 ) {
        $r = 'facebook';
    }
    elsif ( index( $ua, "getright" ) != -1 ) {
        $r = 'getright';
    }
    elsif ( index( $ua, "adsbot-google" ) != -1 ) {
        $r = 'googleadsbot';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "mediapartners-google" ) != -1 ) {
        $r = 'googleadsense';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "googlebot-image" ) != -1 ) {
        $r = 'googlebotimage';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "googlebot-news" ) != -1 ) {
        $r = 'googlebotnews';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "googlebot-video" ) != -1 ) {
        $r = 'googlebotvideo';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "googlebot-mobile" ) != -1 ) {
        $r = 'googlemobile';
        $robot_tests->{google} = 1;
    }
    elsif ( index( $ua, "googlebot" ) != -1 ) {
        $r = 'google';
    }
    elsif ( $ua =~ m{go.*package http} ) {
	$r = 'golib';
	$robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "indy library" ) != -1 ) {
        $r = 'indy';
        $robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "infoseek" ) != -1 ) {
        $r = 'infoseek';
    }
    elsif ( index( $ua, "lecodechecker" ) != -1 ) {
        $r = 'linkexchange';
    }
    elsif ( index( $ua, "linkchecker" ) != -1 ) {
        $r = 'linkchecker';
    }
    elsif ( index( $ua, "lycos" ) != -1 ) {
        $r = 'lycos';
    }
    elsif ( index( $ua, "mechanize" ) != -1 ) {
	$r = 'rubylib';
	$robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "mj12bot/" ) != -1 ) {
        $r = 'mj12bot';
    }
    elsif ( index( $ua, "puf/" ) != -1 ) {
        $r = 'puf';
        $robot_tests->{lib} = 1;
    }
    elsif ( index( $ua, "scooter" ) != -1 ) {
        $r = 'scooter';
    }
    elsif ( index( $ua, "special_archiver" ) != -1 ) {
        $r = 'specialarchiver';
    }
    elsif ( index( $ua, "webcrawler" ) != -1 ) {
        $r = 'webcrawler';
    }
    elsif ( index( $ua, "wget" ) != -1 ) {
        $r = 'wget';
    }
    elsif ( index( $ua, "yandexbot" ) != -1 ) {
        $r = 'yandex';
    }
    elsif ( index( $ua, "yandeximages" ) != -1 ) {
        $r = 'yandeximages';
    }
    elsif ( ($ua =~ m{^java} && !$self->{browser} )
        || index( $ua, "jdk" ) != -1
        || index( $ua, "jakarta commons-httpclient" ) != -1
        || index( $ua, "google-http-java-client" ) != -1 ) {
        $r = 'java';
        $robot_tests->{lib} = 1;
    }

    if ( $browser_tests->{applecoremedia}
	 || $browser_tests->{dalvik} )
    {
        $robot_tests->{lib} = 1;
    }

    if ($r) {
        $robot_tests->{$r} = 1;
        $self->{robot_string} = $ROBOT_NAMES{$r};    # Including undef
    }

    if ($r) {

        # Got a named robot
        $robot_tests->{robot} = $r;
    }
    elsif ( $ua =~ /seek (?! mo (?: toolbar )? \s+ \d+\.\d+ )/x ) {

        # Store the fragment for later, to determine full name
        $self->{robot_fragment} = "seek";
        $robot_tests->{robot}   = 'unknown';
    }
    elsif ( $ua =~ /search (?! [\w\s]* toolbar \b | bar \b )/x ) {

        # Store the fragment for later, to determine full name
        $self->{robot_fragment} = "search";
        $robot_tests->{robot}   = 'unknown';
    }
    elsif ( 0 && $self->{user_agent} =~ /([\w \/\.]+)\s*[\;\(]\s*\+http\:/i ) {
	# Something followed by +http
	$self->{robot_string} = $1;
	$self->{robot_string} =~ s/^(.*?)\s*/$1/;
	$robot_tests->{robot} = 'unknown';
    }
    else {
        # See if we have a simple fragment
        for my $fragment (@ROBOT_FRAGMENTS) {
            if ( index( $ua, $fragment ) != -1 ) {
                $self->{robot_fragment} = $fragment;
                $robot_tests->{robot}   = 'unknown';
                last;
            }
        }
    }
}

### OS tests, only run on demand

sub _init_os {
    my $self = shift;

    my $tests         = $self->{tests};
    my $browser_tests = $self->{browser_tests};
    my $ua            = lc $self->{user_agent};

    my $os_tests = $self->{os_tests} = {};
    my $os = undef;
    my $os_string = undef;

    # Windows

    if ( index( $ua, "16bit" ) != -1 ) {
        $os        = 'windows';
        $os_string = '16-bit Windows';
        $os_tests->{win16} = $os_tests->{windows} = 1;
    }

    if ( index( $ua, "win" ) != -1 ) {
        if (   index( $ua, "win16" ) != -1
            || index( $ua, "windows 3" ) != -1
            || index( $ua, "windows 16-bit" ) != -1 ) {
            $os_tests->{win16} = 1;
            $os_tests->{win3x} = 1;
            $os                = "windows";
            if ( index( $ua, "windows 3.1" ) != -1 ) {
                $os_tests->{win31} = 1;
                $os_string = 'Win3x';    # FIXME bug compatibility
            }
            else {
                $os_string = 'Win3x';
            }
        }
        elsif (index( $ua, "win95" ) != -1
            || index( $ua, "windows 95" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win95';
            $os_tests->{win95} = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "win 9x 4.90" ) != -1     # whatever
		|| index( $ua, "windows me" ) != -1 )
        {
            $os        = "windows";
            $os_string = 'WinME';
            $os_tests->{winme} = $os_tests->{win32} = 1;
        }
        elsif (index( $ua, "win98" ) != -1
            || index( $ua, "windows 98" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win98';
            $os_tests->{win98} = $os_tests->{win32} = 1;
        }
	elsif ( index( $ua, "windows 2000" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win2k';
            $os_tests->{win2k} = $os_tests->{winnt} = $os_tests->{win32} = 1;
	}
        elsif ( index( $ua, "windows ce" ) != -1 ) {
            $os                = 'windows';
            $os_string         = 'WinCE';
            $os_tests->{wince} = 1;
        }
        elsif ( index( $ua, "windows phone" ) != -1 ) {
            $os = 'winphone';
            $os_tests->{winphone} = 1;

            if ( index( $ua, "windows phone os 7.0" ) != -1 ) {
                $os_tests->{winphone7} = 1;
            }
            elsif ( index( $ua, "windows phone os 7.5" ) != -1 ) {
                $os_tests->{winphone7_5} = 1;
            }
            elsif ( index( $ua, "windows phone 8.0" ) != -1 ) {
                $os_tests->{winphone8} = 1;
            }
        }
    }

    if ( index( $ua, "nt" ) != -1 ) {
        if ( index( $ua, "nt 5.0" ) != -1
	     || index( $ua, "nt5" ) != -1 )
	{
            $os        = "windows";
            $os_string = 'Win2k';
            $os_tests->{win2k} = $os_tests->{winnt} = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "nt 5.1" ) != -1 ) {
            $os        = "windows";
            $os_string = 'WinXP';
            $os_tests->{winxp} = $os_tests->{winnt} = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "nt 5.2" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win2k3';
            $os_tests->{win2k3} = $os_tests->{winnt} = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "nt 6.0" ) != -1 ) {
            $os        = "windows";
            $os_string = 'WinVista';
            $os_tests->{winvista} = $os_tests->{winnt} = $os_tests->{win32}
                = 1;
        }
        elsif ( index( $ua, "nt 6.1" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win7';
            $os_tests->{win7} = $os_tests->{winnt} = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "nt 6.2" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win8.0';
            $os_tests->{win8_0} = $os_tests->{win8} = $os_tests->{winnt}
                = $os_tests->{win32} = 1;
        }
        elsif ( index( $ua, "nt 6.3" ) != -1 ) {
            $os        = "windows";
            $os_string = 'Win8.1';
            $os_tests->{win8_1} = $os_tests->{win8} = $os_tests->{winnt}
                = $os_tests->{win32} = 1;
        }
        elsif (index( $ua, "winnt" ) != -1
            || index( $ua, "windows nt" ) != -1
            || index( $ua, "nt4" ) != -1
            || index( $ua, "nt3" ) != -1 ) {
            $os        = "windows";
            $os_string = "WinNT";
            $os_tests->{winnt} = $os_tests->{win32} = 1;
        }
    }

    if ($os) {

        # windows, set through some path above
        $os_tests->{windows} = 1;
        $os_tests->{win32} = 1 if index( $ua, "win32" ) != -1;
    }
    elsif ( index( $ua, "macintosh" ) != -1 || index( $ua, "mac_" ) != -1 ) {

        # Mac operating systems
        $os_tests->{mac} = 1;
        if ( index( $ua, "mac os x" ) != -1 ) {
            $os = "macosx";
            $os_tests->{$os} = 1;
        }
        else {
            $os = "mac";
        }
        if ( index( $ua, "68k" ) != -1 || index( $ua, "68000" ) != -1 ) {
            $os_tests->{mac68k} = 1;
        }
        elsif ( index( $ua, "ppc" ) != -1 || index( $ua, "powerpc" ) != -1 ) {
            $os_tests->{macppc} = 1;
        }
    }
    elsif (index( $ua, "ipod" ) != -1
        || index( $ua, "iphone" ) != -1
        || index( $ua, "ipad" ) != -1 ) {

        # iOS
        $os = 'ios';
        $os_tests->{$os} = 1;
    }
    elsif ( index( $ua, "android" ) != -1 ) {

        # Android
        $os = 'android';    # Test gets set in the device testing
    }
    elsif ( index( $ua, "inux" ) != -1 ) {

        # Linux
        $os = 'linux';
        $os_tests->{linux} = $os_tests->{unix} = 1;
    }
    elsif ( $tests->{x11} && index( $ua, "cros" ) != -1 ) {

        # ChromeOS
        $os = 'chromeos';
        $os_tests->{chromeos} = 1;
    }
    ## Long series of unlikely OSs
    elsif ( index( $ua, 'amiga' ) != -1 ) {
        $os = 'amiga';
        $os_tests->{$os} = 1;
    }
    elsif ( index( $ua, 'os/2' ) != -1 ) {
        $os = 'os2';
        $os_tests->{$os} = 1;
    }
    elsif ( index( $ua, "solaris" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'Solaris';
        $os_tests->{sun} = $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "samsung" ) == -1 && index( $ua, "sun" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'SunOS';
        $os_tests->{sun} = $os_tests->{unix} = 1;
        $os_tests->{suni86} = 1 if index( $ua, "i86" ) != -1;
        $os_tests->{sun4}   = 1 if index( $ua, "sunos 4" ) != -1;
        $os_tests->{sun5}   = 1 if index( $ua, "sunos 5" ) != -1;
    }
    elsif ( index( $ua, "irix" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'Irix';
        $os_tests->{irix} = $os_tests->{unix} = 1;
        $os_tests->{irix5} = 1 if ( index( $ua, "irix5" ) != -1 );
        $os_tests->{irix6} = 1 if ( index( $ua, "irix6" ) != -1 );
    }
    elsif ( index( $ua, "hp-ux" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'HP-UX';
        $os_tests->{hpux} = $os_tests->{unix} = 1;
        $os_tests->{hpux9}  = 1 if index( $ua, "09." ) != -1;
        $os_tests->{hpux10} = 1 if index( $ua, "10." ) != -1;
    }
    elsif ( index( $ua, "aix" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'AIX';
        $os_tests->{aix} = $os_tests->{unix} = 1;
        $os_tests->{aix1} = 1 if ( index( $ua, "aix 1" ) != -1 );
        $os_tests->{aix2} = 1 if ( index( $ua, "aix 2" ) != -1 );
        $os_tests->{aix3} = 1 if ( index( $ua, "aix 3" ) != -1 );
        $os_tests->{aix4} = 1 if ( index( $ua, "aix 4" ) != -1 );
    }
    elsif ( index( $ua, "sco" ) != -1 || index( $ua, "unix_sv" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'SCO Unix';
        $os_tests->{sco} = $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "unix_system_v" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'System V Unix';
        $os_tests->{unixware} = $os_tests->{unix} = 1;
    }
    elsif ( $ua =~ m{\bncr\b} ) {
        $os        = 'unix';
        $os_string = 'NCR Unix';
        $os_tests->{mpras} = $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "reliantunix" ) != -1 ) {
        $os        = 'unix';
        $os_string = 'Reliant Unix';
        $os_tests->{reliant} = $os_tests->{unix} = 1;
    }
    elsif (index( $ua, "dec" ) != -1
        || index( $ua, "osf1" ) != -1
        || index( $ua, "declpha" ) != -1
        || index( $ua, "alphaserver" ) != -1
        || index( $ua, "ultrix" ) != -1
        || index( $ua, "alphastation" ) != -1 ) {
        $os = 'unix';
        $os_tests->{dec} = $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "sinix" ) != -1 ) {
        $os = 'unix';
        $os_tests->{sinix} = $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "bsd" ) != -1 ) {
        $os = 'unix';
        if ( $self->{user_agent} =~ m{(\w*bsd\w*)}i ) {
            $os_string = $1;
        }
        $os_tests->{bsd} = $os_tests->{unix} = 1;
        $os_tests->{freebsd} = 1 if index( $ua, "freebsd" ) != -1;
    }
    elsif ( $tests->{x11} ) {

        # Some Unix we didn't identify
        $os = 'unix';
        $os_tests->{unix} = 1;
    }
    elsif ( index( $ua, "vax" ) != -1 || index( $ua, "openvms" ) != -1 ) {

        $os = 'vms';
        $os_tests->{vms} = 1;
    }
    elsif ( index( $ua, "bb10" ) != -1 ) {
        $os = 'bb10';
        $os_tests->{bb10} = 1;
    }
    elsif ( index( $ua, "rim tablet os" ) != -1 ) {
        $os = 'rimtabletos';
        $os_tests->{rimtabletos} = 1;
    }
    elsif ( index( $ua, "playstation 3" ) != -1 ) {
        $os = 'ps3gameos';
        $os_tests->{ps3gameos} = 1;
    }
    elsif ( index( $ua, "playstation portable" ) != -1 ) {
        $os = 'pspgameos';
        $os_tests->{pspgameos} = 1;
    }
    elsif ( index( $ua, "windows" ) != -1 ) {

        # Windows again, the super generic version
        $os_tests->{windows} = 1;
    }
    elsif ( index( $ua, "win32" ) != -1 ) {
        $os_tests->{win32} = $os_tests->{windows} = 1;
    }
    else {
        $os = undef;
    }

    # To deal with FirefoxOS we seem to have to load-on-demand devices
    # also, by calling ->mobile and ->tablet. We have to be careful;
    # if we ever created a loop back from _init_devices to _init_os
    # we'd run forever.
    if (  !$os
        && $browser_tests->{firefox}
        && index( $ua, "fennec" ) == -1
        && ( $self->mobile || $self->tablet ) ) {
        $os = 'firefoxos';
        $os_tests->{firefoxos} = 1;
    }

    $self->{os} = $os;
    if ( $os and !$os_string ) {
        $os_string = $OS_NAMES{$os};
    }
    $self->{os_string} = $os_string;
}

sub _init_os_version {
    my ($self) = @_;

    my $os        = $self->os;
    my $os_string = $self->os_string;
    my $ua        = lc $self->{user_agent};

    my $os_version = undef;

    if ( !defined($os) ) {

        # Nothing is going to work if we have no OS. Skip everything.
    }
    elsif ( $os eq 'winphone' ) {
        if ( $ua =~ m{windows phone (?:os )?(\d+)(\.?\d*)([\.\d]*)} ) {
            $os_version = [ $1, $2, $3 ];
        }
    }
    elsif ( $os eq 'macosx' ) {
        if ( $ua =~ m{os x (\d+)[\._](\d+)[\._]?(\d*)} ) {
            $os_version = [ $1, ".$2", length($3) ? ".$3" : '' ];
        }
    }
    elsif ( $os eq 'ios' ) {
        if ( $ua =~ m{ os (\d+)[\._ ](\d+)[\._ ]?(\d*)} ) {
            $os_version = [ $1, ".$2", length($3) ? ".$3" : '' ];
        }
    }
    elsif ( $os eq 'chromeos' ) {
        if ( $ua =~ m{ cros \S* (\d+)(\.?\d*)([\.\d]*)} ) {
            $os_version = [ $1, $2, $3 ];
        }
    }
    elsif ( $os eq 'android' ) {
        if ( $ua =~ m{android (\d+)(\.?\d*)([\w\-\.]*)[\;\)]} ) {
            $os_version = [ $1, $2, $3 ];
        }
    }
    elsif ( $os eq 'firefoxos' ) {
        if ( $ua =~ m{firefox/(\d+)(\.?\d*)([\.\d]*)} ) {
            $os_version = [ $1, $2, $3 ];
        }
    }

    # Set the version. It might be set to undef, in which case we know
    # not to go through this next time.
    $self->{os_version} = $os_version;
}

### Version determination, only run on demand

sub _init_version {
    my ($self) = @_;

    my $ua            = lc $self->{user_agent};
    my $tests         = $self->{tests};
    my $browser_tests = $self->{browser_tests};
    my $browser       = $self->{browser};

    $self->{version_tests} = {};
    my $version_tests = $self->{version_tests};

    my ( $major, $minor, $beta );

    ### First figure out version numbers. First, we test if we're
    ### using a browser that needs some special method to determine
    ### the version.

    if ( defined($browser) && $browser eq 'opera' ) {

        # Opera has a "compatible; " section, but lies sometimes. It needs
        # special handling.

        # http://dev.opera.com/articles/view/opera-ua-string-changes/
        # http://my.opera.com/community/openweb/idopera/
        # Opera/9.80 (S60; SymbOS; Opera Mobi/320; U; sv) Presto/2.4.15 Version/10.00
        # Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.52 Safari/537.36 OPR/15.0.1147.100

        if ( $ua =~ m{\AOpera.*\sVersion/(\d*)\.(\d*)\z}i ) {
            $major = $1;
            $minor = $2;
        }
        elsif ( $ua =~ m{\bOPR/(\d+)\.(\d+)}i ) {
            $major = $1;
            $minor = $2;
        }
        elsif ( $ua =~ m{Opera[ /](\d+).(\d+)}i ) {
            $major = $1;
            $minor = $2;
        }
    }
    elsif ( $ua
        =~ m{\b compatible; \s* [\w\-]* [/\s] ( [0-9]+ ) (?: .([0-9]+) (\S*) )? ;}x
        ) {
        # MSIE and some others use a "compatible" format
        ( $major, $minor, $beta ) = ( $1, $2, $3 );
    }
    elsif ( !$browser ) {

        # Nothing else is going to work if $browser isn't defined; skip the
        # specific approaches and go straight to the generic ones.
    }
    elsif ( $browser_tests->{safari} ) {

        # Safari Version

        if (
            0
            && $ua =~ m{ # Disabled for bug compatibility
                version/
                ( \d+ )       # Major version number is everything before first dot
                \.            # First dot
                ( \d+ )?      # Minor version number follows dot
            }x
            ) {
            # Safari starting with version 3.0 provides its own public version
            ( $major, $minor ) = ( $1, $2, undef );
        }
        elsif ( $ua =~ m{ safari/ ( \d+ (?: \.\d+ )* ) }x ) {
            if ( my ( $safari_build, $safari_minor ) = split /\./, $1 ) {
                $major = int( $safari_build / 100 );
                $minor = int( $safari_build % 100 );
                $beta  = ".$safari_minor" if $safari_minor;
            }
        }
        elsif ( $ua =~ m{applewebkit\/([\d\.]{1,})}xi ) {
            if ( my ( $safari_build, $safari_minor ) = split /\./, $1 ) {
                $major = int( $safari_build / 100 );
                $minor = int( $safari_build % 100 );
                $beta  = ".$safari_minor" if $safari_minor;
            }
        }
    }
    elsif ( $browser_tests->{ie} ) {

        # MSIE

        if ( $ua =~ m{\b msie \s ( [0-9\.]+ ) (?: [a-z]+ [a-z0-9]* )? ;}x ) {

            # Internet Explorer
            ( $major, $minor, $beta ) = split /\./, $1;
        }
        elsif ( $ua =~ m{\b rv: ( [0-9\.]+ ) \b}x ) {

            # MSIE masking as Gecko really well ;)
            ( $major, $minor, $beta ) = split /\./, $1;
        }
    }
    elsif ( $browser eq 'n3ds' ) {
        if ( $ua =~ m{Nintendo 3DS;.*\sVersion/(\d*)\.(\d*)}i ) {
            $major = $1;
            $minor = $2;
        }
    }
    elsif ( $browser eq 'browsex' ) {
        if ( $ua =~ m{BrowseX \((\d+)\.(\d+)([\d.]*)}i ) {
            $major = $1;
            $minor = $2;
            $beta  = $3;
        }
    }
    elsif ( $ua =~ m{netscape6/(\d+)\.(\d+)([\d.]*)} ) {

        # Other cases get handled below, we just need this to skip the "6"
        $major = $1;
        $minor = $2;
        $beta  = $3;
    }
    elsif ( $browser eq 'chrome' &&
	    $ua =~ m{crios/(\d+)\.(\d+)([\d.]*)} )
    {
        $major = $1;
        $minor = $2;
        $beta  = $3;
    }

    # If we didn't match a browser-specific test, we look for
    # "$browser/x.y.z"
    if ( !defined($major) and defined( $self->{browser_string} ) ) {
        my $version_index = index( $ua, lc "$self->{browser_string}/" );
        if ( $version_index != -1 ) {
            my $version_str
                = substr( $ua, $version_index + length($browser) );
            if ( $version_str =~ m{/(\d+)\.(\d+)([\w.]*)} ) {
                $major = $1;
                $minor = $2;
                $beta  = $3;
            }
        }
    }

    # If that didn't work, we try "Version/x.y.z"
    if ( !defined($major) ) {
        if ( $ua =~ m{version/(\d+)\.(\d+)([\w.]*)} ) {
            $major = $1;
            $minor = $2;
            $beta  = $3;
        }
    }

    # If that didn't work, we start guessing. Just grab
    # anything after a word and a slash.
    if ( !defined($major) ) {

        ( $major, $minor, $beta ) = (
            $ua =~ m{
                \S+        # Greedily catch anything leading up to forward slash.
                \/                # Version starts with a slash
                [A-Za-z]*         # Eat any letters before the major version
                ( [0-9]+ )        # Major version number is everything before the first dot
                 \.               # The first dot
                ([\d]* )          # Minor version number is every digit after the first dot
                                  # Throw away remaining numbers and dots
                ( [^\s]* )        # Beta version string is up to next space
            }x
        );
    }

    # If that didn't work, try even more generic.
    if ( !defined($major) ) {

        if ( $ua =~ /[A-Za-z]+\/(\d+)\;/ ) {
            $major = $1;
            $minor = 0;
        }
    }

    # If that didn't work, give up.
    $major = 0     if !$major;
    $minor = 0     if !$minor;
    $beta  = undef if ( defined($beta) && $beta eq '' );

    # Now set version tests

    if ( $browser_tests->{netscape} ) {

        # Netscape browsers
        $version_tests->{nav2}   = 1 if $major == 2;
        $version_tests->{nav3}   = 1 if $major == 3;
        $version_tests->{nav4}   = 1 if $major == 4;
        $version_tests->{nav4up} = 1 if $major >= 4;
        $version_tests->{nav45}  = 1 if $major == 4 && $minor == 5;
        $version_tests->{nav45up} = 1
            if ( $major == 4 && ".$minor" >= .5 )
            || $major >= 5;
        $version_tests->{navgold} = 1
            if defined($beta) && ( index( $beta, "gold" ) != -1 );
        $version_tests->{nav6} = 1
            if ( $major == 5 || $major == 6 );    # go figure
        $version_tests->{nav6up} = 1 if $major >= 5;

        if ( $browser eq 'seamonkey' ) {

            # Ugh, seamonkey versions started back at 1.
            $version_tests->{nav2}    = 0;
            $version_tests->{nav4up}  = 1;
            $version_tests->{nav45up} = 1;
            $version_tests->{nav6}    = 1;
            $version_tests->{nav6up}  = 1;
        }
    }

    if ( $browser_tests->{ie} ) {
        $version_tests->{ie3}    = 1 if ( $major == 3 );
        $version_tests->{ie4}    = 1 if ( $major == 4 );
        $version_tests->{ie4up}  = 1 if ( $major >= 4 );
        $version_tests->{ie5}    = 1 if ( $major == 5 );
        $version_tests->{ie5up}  = 1 if ( $major >= 5 );
        $version_tests->{ie55}   = 1 if ( $major == 5 && $minor == 5 );
        $version_tests->{ie55up} = 1 if ( ".$minor" >= .5 || $major >= 6 );
        $version_tests->{ie6}    = 1 if ( $major == 6 );
        $version_tests->{ie7}    = 1 if ( $major == 7 );
        $version_tests->{ie8}    = 1 if ( $major == 8 );
        $version_tests->{ie9}    = 1 if ( $major == 9 );
        $version_tests->{ie10}   = 1 if ( $major == 10 );
        $version_tests->{ie11}   = 1 if ( $major == 11 );

        $version_tests->{ie_compat_mode}
            = (    $version_tests->{ie7}
                && $tests->{trident}
                && $self->{engine_version} + 0 >= 4 );
    }

    if ( $browser_tests->{aol} ) {
        $version_tests->{aol3} = 1
            if ( index( $ua, "aol 3.0" ) != -1
            || $version_tests->{ie3} );
        $version_tests->{aol4} = 1
            if ( index( $ua, "aol 4.0" ) != -1 )
            || $version_tests->{ie4};
        $version_tests->{aol5}  = 1 if index( $ua, "aol 5.0" ) != -1;
        $version_tests->{aol6}  = 1 if index( $ua, "aol 6.0" ) != -1;
        $version_tests->{aoltv} = 1 if index( $ua, "navio" ) != -1;
    }

    if ( $browser_tests->{opera} ) {
        $version_tests->{opera3} = 1
            if index( $ua, "opera 3" ) != -1 || index( $ua, "opera/3" ) != -1;
        $version_tests->{opera4} = 1
            if ( index( $ua, "opera 4" ) != -1 )
            || ( index( $ua, "opera/4" ) != -1
            && ( index( $ua, "nintendo dsi" ) == -1 ) );
        $version_tests->{opera5} = 1
            if ( index( $ua, "opera 5" ) != -1 )
            || ( index( $ua, "opera/5" ) != -1 );
        $version_tests->{opera6} = 1
            if ( index( $ua, "opera 6" ) != -1 )
            || ( index( $ua, "opera/6" ) != -1 );
        $version_tests->{opera7} = 1
            if ( index( $ua, "opera 7" ) != -1 )
            || ( index( $ua, "opera/7" ) != -1 );

    }

    $minor = ".$minor";

    $self->{major} = $major;
    $self->{minor} = $minor;
    $self->{beta}  = $beta;
}

### Device tests, only run on demand

sub _init_device {
    my ($self) = @_;

    my $ua            = lc $self->{user_agent};
    my $browser_tests = $self->{browser_tests};
    my $tests         = $self->{tests};

    my ( $device, $device_string );
    my $device_tests = $self->{device_tests} = {};

    if ( index( $ua, "windows phone" ) != -1 ) {
        $device = 'winphone';

        # Test is set in _init_os()
    }
    elsif ( index( $ua, "android" ) != -1 ) {
        $device = 'android';
        $device_tests->{$device} = 1;
    }
    elsif (index( $ua, "blackberry" ) != -1
        || index( $ua, "bb10" ) != -1
        || index( $ua, "rim tablet os" ) != -1 ) {
        $device = 'blackberry';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "ipod" ) != -1 ) {
        $device = 'ipod';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "ipad" ) != -1 ) {
        $device = 'ipad';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "iphone" ) != -1 ) {
        $device = 'iphone';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "webos" ) != -1 ) {
        $device = 'webos';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "kindle" ) != -1 ) {
        $device = 'kindle';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "audrey" ) != -1 ) {
        $device = 'audrey';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "i-opener" ) != -1 ) {
        $device = 'iopener';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "avantgo" ) != -1 ) {
        $device                  = 'avantgo';
        $device_tests->{$device} = 1;
        $device_tests->{palm}    = 1;
    }
    elsif ( index( $ua, "palmos" ) != -1 ) {
        $device = 'palm';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "playstation 3" ) != -1 ) {
        $device = 'ps3';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "playstation portable" ) != -1 ) {
        $device = 'psp';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "nintendo dsi" ) != -1 ) {
        $device = 'dsi';
        $device_tests->{$device} = 1;
    }
    elsif ( index( $ua, "nintendo 3ds" ) != -1 ) {
        $device = 'n3ds';
        $device_tests->{$device} = 1;
    }
    elsif (
           $browser_tests->{obigo}
        || index( $ua, "up.browser" ) != -1
        || (   index( $ua, "nokia" ) != -1
            && index( $ua, "windows phone" ) == -1 )
        || index( $ua, "alcatel" ) != -1
        || index( $ua, "ericsson" ) != -1
        || index( $ua, "sie-" ) == 0
        || index( $ua, "wmlib" ) != -1
        || index( $ua, " wap" ) != -1
        || index( $ua, "wap " ) != -1
        || index( $ua, "wap/" ) != -1
        || index( $ua, "-wap" ) != -1
        || index( $ua, "wap-" ) != -1
        || index( $ua, "wap" ) == 0
        || index( $ua, "wapper" ) != -1
        || index( $ua, "zetor" ) != -1
        ) {
        $device = 'wap';
        $device_tests->{$device} = 1;
    }

    $device_tests->{mobile} = (
        ( $browser_tests->{firefox} && index( $ua, "mobile" ) != -1 )
            || ( $browser_tests->{ie}
            && index( $ua, "windows phone" ) == -1
            && index( $ua, "arm" ) != -1 )
            || index( $ua, "windows phone" ) != -1
            || index( $ua, "up.browser" ) != -1
            || index( $ua, "nokia" ) != -1
            || index( $ua, "alcatel" ) != -1
            || index( $ua, "ericsson" ) != -1
            || index( $ua, "sie-" ) == 0
            || index( $ua, "wmlib" ) != -1
            || index( $ua, " wap" ) != -1
            || index( $ua, "wap " ) != -1
            || index( $ua, "wap/" ) != -1
            || index( $ua, "-wap" ) != -1
            || index( $ua, "wap-" ) != -1
            || index( $ua, "wap" ) == 0
            || index( $ua, "wapper" ) != -1
            || index( $ua, "blackberry" ) != -1
            || index( $ua, "iemobile" ) != -1
            || index( $ua, "palm" ) != -1
            || index( $ua, "smartphone" ) != -1
            || index( $ua, "windows ce" ) != -1
            || index( $ua, "palmsource" ) != -1
            || index( $ua, "iphone" ) != -1
            || index( $ua, "ipod" ) != -1
            || index( $ua, "ipad" ) != -1
            || ( index( $ua, "opera mini" ) != -1
            && index( $ua, "tablet" ) == -1 )
            || index( $ua, "htc_" ) != -1
            || index( $ua, "symbian" ) != -1
            || index( $ua, "webos" ) != -1
            || index( $ua, "samsung" ) != -1
            || index( $ua, "samsung" ) != -1
            || index( $ua, "zetor" ) != -1
            || index( $ua, "android" ) != -1
            || index( $ua, "symbos" ) != -1
            || index( $ua, "opera mobi" ) != -1
            || index( $ua, "fennec" ) != -1
            || index( $ua, "obigo" ) != -1
            || index( $ua, "opera tablet" ) != -1
            || index( $ua, "rim tablet" ) != -1
            || ( index( $ua, "bb10" ) != -1
            && index( $ua, "mobile" ) != -1 )
            || $device_tests->{psp}
            || $device_tests->{dsi}
            || $device_tests->{'n3ds'}
            || index( $ua, "googlebot-mobile" ) != -1
            || index( $ua, "msnbot-mobile" ) != -1
            || index( $ua, "bingbot-mobile" ) != -1
    );

    $device_tests->{tablet} = (
        index( $ua, "ipad" ) != -1
            || ( $browser_tests->{ie}
            && index( $ua, "windows phone" ) == -1
            && index( $ua, "arm" ) != -1 )
            || ( index( $ua, "android" ) != -1
            && index( $ua, "mobile" ) == -1
            && index( $ua, "safari" ) != -1 )
            || ( $browser_tests->{firefox} && index( $ua, "tablet" ) != -1 )
            || index( $ua, "kindle" ) != -1
            || index( $ua, "xoom" ) != -1
            || index( $ua, "flyer" ) != -1
            || index( $ua, "jetstream" ) != -1
            || index( $ua, "transformer" ) != -1
            || index( $ua, "novo7" ) != -1
            || index( $ua, "an10g2" ) != -1
            || index( $ua, "an7bg3" ) != -1
            || index( $ua, "an7fg3" ) != -1
            || index( $ua, "an8g3" ) != -1
            || index( $ua, "an8cg3" ) != -1
            || index( $ua, "an7g3" ) != -1
            || index( $ua, "an9g3" ) != -1
            || index( $ua, "an7dg3" ) != -1
            || index( $ua, "an7dg3st" ) != -1
            || index( $ua, "an7dg3childpad" ) != -1
            || index( $ua, "an10bg3" ) != -1
            || index( $ua, "an10bg3dt" ) != -1
            || index( $ua, "opera tablet" ) != -1
            || index( $ua, "rim tablet" ) != -1
            || index( $ua, "hp-tablet" ) != -1
    );

    if ( $browser_tests->{obigo} && $ua =~ /^(mot-[^ \/]+)/ ) {
        $device_string = substr $self->{user_agent}, 0, length $1;
        $device_string =~ s/^MOT-/Motorola /i;
    }
    elsif (
        $ua =~ /windows phone os [^\)]+ iemobile\/[^;]+; ([^;]+; [^;\)]+)/g )
    {
        $device_string = substr $self->{user_agent},
            pos($ua) - length $1, length $1;
        $device_string =~ s/; / /;
    }
    elsif ( $ua
        =~ /windows phone [^\)]+ iemobile\/[^;]+; arm; touch; ([^;]+; [^;\)]+)/g
        ) {
        $device_string = substr $self->{user_agent},
            pos($ua) - length $1, length $1;
        $device_string =~ s/; / /;
    }
    elsif ( $ua =~ /bb10; ([^;\)]+)/g ) {
        $device_string = 'BlackBerry ' . substr $self->{user_agent},
            pos($ua) - length $1, length $1;
        $device_string =~ s/Kbd/Q10/;
    }
    elsif ( $ua =~ /blackberry ([\w.]+)/ ) {
        $device_string = "BlackBerry $1";
    }
    elsif ( $ua =~ /blackberry(\d+)\// ) {
        $device_string = "BlackBerry $1";
    }
    elsif ( $self->{user_agent} =~ /android .*\; ([^;]*) build/i ) {
	if ( $device_tests->{tablet} ) {
	    $device_string = "Android tablet ($1)";
	} else {
	    $device_string = "Android ($1)";
	}
    }
    elsif ( $self->{user_agent}
        =~ /\b((alcatel|huawei|lg|nokia|samsung|sonyericsson)[\w\-]*)\//i ) {
        $device_string = $1;
    }
    elsif ($device) {
        $device_string = $DEVICE_NAMES{$device};
    }
    else {
        $device_string = undef;
    }

    if ($device) {
        $self->{device} = $device;
    }
    else {
        $self->{device}
            = undef;    # Means we cache the fact that we found nothing
    }

    if ($device_string) {
	$self->{device_string} = $device_string;
    }
}

### Now a big block of public accessors for tests and information

sub browser {
    my ($self) = @_;
    return undef unless defined $self->{user_agent};
    return $self->{browser};
}

sub browser_string {
    my ($self) = @_;
    return undef unless defined $self->{user_agent};
    return $self->{browser_string};
}

sub os {
    my ($self) = @_;

    return undef unless defined $self->{user_agent};
    $self->_init_os unless $self->{os_tests};
    return $self->{os};
}

sub os_string {
    my ($self) = @_;

    return undef unless defined $self->{user_agent};
    $self->_init_os unless $self->{os_tests};
    return $self->{os_string};
}

sub _os_version {
    my ($self) = @_;
    $self->_init_os_version if !exists( $self->{os_version} );
    if ( $self->{os_version} ) {
        return @{ $self->{os_version} };
    }
    else {
        return ( undef, undef, undef );
    }
}

sub os_version {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_os_version;
    if ( defined($major) ) {
        return "$major$minor";
    }
    else {
        return undef;
    }
}

sub os_major {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_os_version;
    return $major;
}

sub os_minor {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_os_version;
    return $minor;
}

sub os_beta {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_os_version;
    return $beta;
}

sub _realplayer_version {
    my ($self) = @_;

    $self->_init_version unless $self->{version_tests};
    return $self->{realplayer_version} || 0;
}

sub realplayer_browser {
    my ($self) = @_;
    return defined( $self->{browser} ) && $self->{browser} eq 'realplayer';
}

sub gecko_version {
    my ($self) = @_;

    if ( $self->gecko ) {
        return $self->{engine_version};
    }
    else {
        return undef;
    }
}

sub version {
    my ($self) = @_;
    $self->_init_version() unless $self->{version_tests};

    my $version = "$self->{major}$self->{minor}";
    return $version;
}

sub major {
    my ($self) = @_;
    $self->_init_version() unless $self->{version_tests};

    my ($version) = $self->{major};
    return $version;
}

sub minor {
    my ($self) = @_;
    $self->_init_version() unless $self->{version_tests};

    my ($version) = $self->{minor};
    return $version;
}

sub public_version {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return "$major$minor";
}

sub public_major {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return $major;
}

sub public_minor {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return $minor;
}

sub public_beta {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_public;

    return $beta;
}

sub browser_version {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return "$major$minor";
}

sub browser_major {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return $major;
}

sub browser_minor {
    my ($self) = @_;
    my ( $major, $minor ) = $self->_public;

    return $minor;
}

sub browser_beta {
    my ($self) = @_;
    my ( $major, $minor, $beta ) = $self->_public;

    return $beta;
}

sub _public {
    my ($self) = @_;

    # Return Public version of Safari. See RT #48727.
    if ( $self->safari ) {
        my $ua = lc $self->{user_agent};

        # Safari starting with version 3.0 provides its own public version
        if (
            $ua =~ m{
                version/
                ( \d+ )       # Major version number is everything before first dot
                ( \. \d+ )?   # Minor version number is first dot and following digits
            }x
            ) {
            return ( $1, $2, undef );
        }

        # Safari before version 3.0 had only build numbers; use a lookup table
        # provided by Apple to convert to version numbers

        if ( $ua =~ m{ safari/ ( \d+ (?: \.\d+ )* ) }x ) {
            my $build   = $1;
            my $version = $safari_build_to_version{$build};
            unless ($version) {

                # if exact build -> version mapping doesn't exist, find next
                # lower build

                for my $maybe_build (
                    sort { $self->_cmp_versions( $b, $a ) }
                    keys %safari_build_to_version
                    ) {
                    $version = $safari_build_to_version{$maybe_build}, last
                        if $self->_cmp_versions( $build, $maybe_build ) >= 0;
                }

                # Special case for specific worm that uses a malformed user agent
                return ( '1', '.2', undef ) if $ua =~ m{safari/12x};
            }
            my ( $major, $minor ) = split /\./, $version;
            my $beta;
            $minor =~ s/(\D.*)// and $beta = $1;
            $minor = ( '.' . $minor );
            return ( $major, $minor, ( $beta ? 1 : undef ) );
        }
    }

    $self->_init_version() unless $self->{version_tests};
    return ( $self->{major}, $self->{minor}, $self->{beta} );
}

sub _cmp_versions {
    my ( $self, $a, $b ) = @_;

    my @a = split /\./, $a;
    my @b = split /\./, $b;

    while (@b) {
        return -1 if @a == 0 || $a[0] < $b[0];
        return 1  if @b == 0 || $b[0] < $a[0];
        shift @a;
        shift @b;
    }

    return @a <=> @b;
}

sub engine {
    my ($self) = @_;

    # *shrug*
    if ( my $engine_string = $self->engine_string ) {
        if ( $engine_string eq 'MSIE' ) {
            return 'ie';
        }
        else {
            return lc $engine_string;
        }
    }
    else {
        return undef;
    }
}

sub engine_string {
    my ($self) = @_;

    if ( $self->gecko ) {
        return 'Gecko';
    }

    if ( $self->trident ) {
        return 'Trident';
    }

    if ( $self->ie ) {
        return 'MSIE';
    }

    if ( $self->webkit ) {
        return 'WebKit';
    }

    if ( $self->presto ) {
        return 'Presto';
    }

    if ( $self->netfront ) {
        return 'NetFront';
    }

    if ( $self->khtml ) {
        return 'KHTML';
    }

    return undef;
}

sub engine_version {
    my ($self) = @_;

    if ( $self->{engine_version} ) {
        if ( $self->{engine_version} =~ m{^(\d+(\.\d+)?)} ) {
            return $1;
        }
    }

    return $self->{engine_version};
}

sub engine_major {
    my ($self) = @_;

    if ( $self->{engine_version} ) {
        if ( $self->{engine_version} =~ m{^(\d+)} ) {
            return $1;
        }
    }

    return undef;
}

sub engine_minor {
    my ($self) = @_;

    if ( $self->{engine_version} ) {
        if ( $self->{engine_version} =~ m{^\d+(\.\d+)} ) {
            return $1;
        }
    }

    return undef;
}

sub engine_beta {
    my ($self) = @_;

    if ( $self->{engine_version} ) {
        if ( $self->{engine_version} =~ m{^\d+\.\d+([\.\d\+]*)} ) {
            return $1;
        }
    }

    return undef;
}

sub beta {
    my ($self) = @_;

    $self->_init_version unless $self->{version_tests};

    my ($version) = $self->{beta};
    return $version;
}

sub language {
    my ($self) = @_;

    my $parsed = $self->_language_country();
    return $parsed->{'language'};
}

sub country {
    my ($self) = @_;

    my $parsed = $self->_language_country();
    return $parsed->{'country'};
}

sub device {
    my ($self) = @_;

    $self->_init_device if !exists( $self->{device} );
    return $self->{device};
}

sub device_string {
    my ($self) = @_;

    $self->_init_device if !exists( $self->{device_string} );
    return $self->{device_string};
}

sub device_name {
    my ($self) = @_;
    return $self->device_string;
}

sub _language_country {
    my ($self) = @_;

    if ( $self->safari ) {
        if (   $self->major == 1
            && $self->{user_agent} =~ m/\s ( [a-z]{2} ) \)/xms ) {
            return { language => uc $1 };
        }
        if ( $self->{user_agent} =~ m/\s ([a-z]{2})-([A-Za-z]{2})/xms ) {
            return { language => uc $1, country => uc $2 };
        }
    }

    if (   $self->aol
        && $self->{user_agent} =~ m/;([A-Z]{2})_([A-Z]{2})\)/ ) {
        return { language => $1, country => $2 };
    }

    if ( $self->{user_agent} =~ m/\b([a-z]{2})-([A-Za-z]{2})\b/xms ) {
        return { language => uc $1, country => uc $2 };
    }

    if ( $self->{user_agent} =~ m/\[([a-z]{2})\]/xms ) {
        return { language => uc $1 };
    }

    if ( $self->{user_agent} =~ m/\(([^)]+)\)/xms ) {
        my @parts = split( /;/, $1 );
        foreach my $part (@parts) {
            if ( $part =~ /^\s*([a-z]{2})\s*$/ ) {
                return { language => uc $1 };
            }
        }
    }

    return { language => undef, country => undef };
}

sub browser_properties {
    my ($self) = @_;

    my @browser_properties;

    my ( $test, $value );

    while ( ( $test, $value ) = each %{ $self->{tests} } ) {
        push @browser_properties, $test if $value;
    }
    while ( ( $test, $value ) = each %{ $self->{browser_tests} } ) {
        push @browser_properties, $test if $value;
    }

    $self->_init_device  unless $self->{device_tests};
    $self->_init_os      unless $self->{os_tests};
    $self->_init_robots  unless $self->{robot_tests};
    $self->_init_version unless $self->{version_tests};

    while ( ( $test, $value ) = each %{ $self->{device_tests} } ) {
        push @browser_properties, $test if $value;
    }
    while ( ( $test, $value ) = each %{ $self->{os_tests} } ) {
        push @browser_properties, $test if $value;
    }
    while ( ( $test, $value ) = each %{ $self->{robot_tests} } ) {
        push @browser_properties, $test if $value;
    }
    while ( ( $test, $value ) = each %{ $self->{version_tests} } ) {
        push @browser_properties, $test if $value;
    }

    # devices are a property too but it's not stored in %tests
    # so I explicitly test for it and add it
    push @browser_properties, 'device' if ( $self->device() );

    return sort @browser_properties;
}

sub robot_string {
    my $self = shift;

    $self->_init_robots unless exists( $self->{robot_string} );
    if ( defined( $self->{robot_fragment} )
        && !defined( $self->{robot_string} ) ) {

        # We haven't figured out what the name is, but we know which
        # fragment led us to identify the robot. Set the string based
        # on what surrounds the fragment.
        my $fragment = $self->{robot_fragment};
        if (
            $self->{user_agent} =~ m{\s*               # Beginning whitespace
                                      ([\w .:,\-\@\/]*  # Words before fragment
                                       $fragment        # Match the fragment
                                       [\w .:,\-\@\/]*) # Words after fragment
                                     }ix
            ) {
            $self->{robot_string} = $1;
            $self->{robot_string} =~ s/ *$//;    # Trim whitespace at end
	    if ( $self->{user_agent} eq $self->{robot_string}
		&& $self->{user_agent} =~ m{\/.*\/}
		&& $self->{user_agent} =~ m{
                                      ([\w]*               # Words before fragment
                                       $fragment           # Match the fragment
                                       \/[\d\.]+           # Version
                                       [\w]*)              # Beta stuff
                                     }ix )
	    {
		# We matched the whole string, but it seems to
		# make more sense as whitespace-separated
		# "thing/ver" tokens
		$self->{robot_string} = $1;
	    }
        }
    }
    return $self->{robot_string};
}

sub robot_name {
    my ($self) = @_;
    return $self->robot_string;
}

1;

# ABSTRACT: Determine Web browser, version, and platform from an HTTP user agent string

__END__

=head1 SYNOPSIS

    use HTTP::BrowserDetect;

    my $ua = HTTP::BrowserDetect->new($user_agent_string);

    # Print general information
    print "Browser: $ua->browser_string\n"
        if $ua->browser_string;
    print "Version: $ua->browser_version$ua->browser_beta\n"
        if $ua->browser_version;
    print "OS: $ua->os_string\n"
        if $ua->os_string;

    # Detect operating system
    if ($ua->windows) {
      if ($ua->winnt) ...
      if ($ua->win95) ...
    }
    print "Mac\n" if $ua->macosx;

    # Detect browser vendor and version
    print "Safari\n" if $ua->safari;
    print "MSIE\n" if $ua->ie;
    print "Mobile\n" if $ua->mobile;
    if ($ua->browser_major(4)) {
    if ($ua->browser_minor() > .5) {
        ...
    }
    }
    if ($ua->browser_version() > 4.5) {
      ...;
    }

=head1 DESCRIPTION

The HTTP::BrowserDetect object does a number of tests on an HTTP user agent
string. The results of these tests are available via methods of the object.

This module was originally based upon the JavaScript browser detection
code available at
L<http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html>.

=head1 CONSTRUCTOR AND STARTUP

=head2 new()

    HTTP::BrowserDetect->new( $user_agent_string )

The constructor may be called with a user agent string specified. Otherwise, it
will use the value specified by $ENV{'HTTP_USER_AGENT'}, which is set by the
web server when calling a CGI script.

=head1 SUBROUTINES/METHODS

=head1 Browser Information

=head2 browser()

Returns the browser, as one of the following values:

chrome, firefox, ie, opera, safari, applecoremedia, blackberry,
browsex, dalvik, elinks, links, lynx, emacs, epiphany, galeon,
konqueror, icab, lotusnotes, mosaic, mozilla, netfront, netscape,
n3ds, dsi, obigo, realplayer, seamonkey, silk, staroffice, ucbrowser,
webtv

If the browser could not be identified (either because unrecognized
or because it is a robot), returns C<undef>.

=head2 browser_string()

Returns a human formatted version of the browser name. These names are
subject to change and are meant for display purposes. This may include
information additional to what's in browser() (e.g. distinguishing
Firefox from Iceweasel).

If the user agent could not be identified, or if it was identified as
a robot instead, returns C<undef>.

=head1 Browser Version

Please note that that the version(), major() and minor() methods have been
deprecated as of release 1.78 of this module. They should be replaced
with browser_version(), browser_major(), browser_minor(), and browser_beta().

The reasoning behind this is that version() method will, in the case of Safari,
return the Safari/XXX numbers even when Version/XXX numbers are present in the
UserAgent string (i.e. it will return incorrect versions for Safari in
some cases).

=head2 browser_version()

Returns the browser version (major and minor) as a string. For
example, for Chrome 36.0.1985.67, this returns "36.0".

=head2 browser_major()

Returns the major part of the version as a string. For example, for
Chrome 36.0.1985.67, this returns "36".

Returns undef if no version information can be detected.

=head2 browser_minor()

Returns the minor part of the version as a string. This includes the
decimal point; for example, for Chrome 36.0.1985.67, this returns
".0".

Returns undef if no version information can be detected.

=head2 browser_beta()

Returns any part of the version after the major and minor version, as
a string. For example, for Chrome 36.0.1985.67, this returns
".1985.67". The beta part of the string can contain any type of
alphanumeric characters.

Returns undef if no version information can be detected. Returns an
empty string if version information is detected but it contains only
a major and minor version with nothing following.

=head1 Operating System

=head2 os()

Returns one of the following strings, or C<undef>:

  windows, winphone, mac, macosx, linux, android, ios, os2, unix, vms,
  chromeos, firefoxos, ps3, psp, rimtabletos, blackberry, amiga

=head2 os_string()

Returns a human formatted version of the OS name.  These names are
subject to change and are really meant for display purposes. This may
include information additional to what's in os() (e.g. distinguishing
various editions of Windows from one another) (although for a way to
do that that's more suitable for use in program logic, see below under
"OS related properties").

Returns C<undef> if no OS information could be detected.

=head2 os_version()
=head2 os_major()
=head2 os_minor()
=head2 os_beta()

Returns version information for the OS, if any could be detected. The
format is the same as for the browser_version() functions.

=head1 Mobile Devices

=head2 mobile()

Returns true if the browser appears to belong to a handheld device.

=head2 tablet()

Returns true if the browser appears to belong to a tablet device.

=head2 device()

Returns the type of mobile / tablet hardware, if it can be detected.

Currently returns one of: android, audrey, avantgo, blackberry, dsi, iopener, ipad,
iphone, ipod, kindle, n3ds, palm, ps3, psp, wap, webos, winphone.

Returns C<undef> if this is not a tablet/mobile device or no hardware
information can be detected.

=head2 device_string()

Returns a human formatted version of the hardware device name.  These names are
subject to change and are really meant for display purposes.  You should use
the device() method in your logic. This may include additional
information (such as the model of phone if it is detectable).

Returns C<undef> if this is not a portable device or if no device name
can be detected.

=head1 Robots

=head2 robot()

If the user agent appears to be a robot, spider, crawler, or other
automated Web client, this returns one of the following values:

lwp, slurp, yahoo, msnmobile, msn, ahrefs, altavista, apache,
askjeeves, baidu, curl, facebook, getright, googleadsbot,
googleadsense, googlebotimage, googlebotnews, googlebotvideo,
googlemobile, google, golib, indy, infoseek, linkexchange,
linkchecker, lycos, mj12bot, puf, rubylib, scooter, specialarchiver,
webcrawler, wget, yandexbot, yandeximages, java, unknown

Returns "unknown" when the user agent is believed to be a robot but
is not identified as one of the above specific robots.

Returns C<undef> if the user agent is not a robot or cannot be
identified.

Note that if a robot crafts a user agent designed to impersonate a
particular browser, we generally set properties appropriate to both
the actual robot, and the browser it is impersonating. For example,
googlebot-mobile pretends to be mobile safari so that it will get
mobile versions of pages. In this case, browser() will return
'safari', the properties will generally be set as if for Mobile
Safari, the 'robot' property will be set, and robot() will return
'googlemobile'.

=head3 lib()

Returns true if the user agent appears to be an HTTP library or tool
(e.g. LWP, curl, wget, java). Generally libraries are also classified
as robots, although it is impossible to tell whether they are being
operated by an automated system or a human.

=head3 robot_string()

Returns a human formatted version of the robot name. These names are
subject to change and are meant for display purposes. This may include
additional information (e.g. robots which return "unknown" from
robot() generally can be identified in a human-readable fashion by
reading robot_string() ).

=head1 Browser Properties

Operating systems, devices, browser names, rendering engines, and
true-or-false methods (e.g. "mobile" and "lib") are all browser
properties. For example, calling browser_properties() for Mobile
Safari running on an Android will return this list:

('android', 'device', 'mobile', 'mobile_safari', 'safari', 'webkit')

=head2 browser_properties()

Returns all properties for this user agent, as a list. Note that
because a large number of cases must be considered, this will take
significantly more time than simply querying the particular methods
you care about.

A mostly complete list of properties follows (i.e. each of these
methods is both a method you can call, and also a property that may
be in the list returned by browser_properties() ). In addition to this
list, robot(), lib(), device(), mobile(), and tablet() are all
browser properties.

=head2 OS related properties

The following methods are available, each returning a true or false value.
Some methods also test for the operating system version. The indentations
below show the hierarchy of tests (for example, win2k is considered a type of
winnt, which is a type of win32)

=head3 windows()

    win16 win3x win31
    win32
        winme win95 win98
        winnt
            win2k winxp win2k3 winvista win7
            win8
                win8_0 win8_1
    wince
    winphone
        winphone7 winphone7_5 winphone8

=head3 dotnet()

=head3 chromeos()

=head3 firefoxos()

=head3 mac()

mac68k macppc macosx ios

=head3 os2()

=head3 bb10()

=head3 rimtabletos()

=head3 unix()

  sun sun4 sun5 suni86 irix irix5 irix6 hpux hpux9 hpux10
  aix aix1 aix2 aix3 aix4 linux sco unixware mpras reliant
  dec sinix freebsd bsd

=head3 vms()

=head3 amiga()

=head3 ps3gameos()

=head3 pspgameos()

It may not be possibile to detect Win98 in Netscape 4.x and earlier. On Opera
3.0, the userAgent string includes "Windows 95/NT4" on all Win32, so you can't
distinguish between Win95 and WinNT.

=head2 Browser related properties

The following methods are available, each returning a true or false value.
Some methods also test for the browser version, saving you from checking the
version separately.

=head3 aol aol3 aol4 aol5 aol6

=head3 chrome

=head3 emacs

=head3 firefox

=head3 gecko

=head3 icab

=head3 ie ie3 ie4 ie4up ie5 ie5up ie55 ie55up ie6 ie7 ie8 ie9 ie10 ie11

=head3 ie_compat_mode

The ie_compat_mode is used to determine if the IE user agent is for
the compatibility mode view, in which case the real version of IE is
higher than that detected. The true version of IE can be inferred from
the version of Trident in the engine_version method.

=head3 konqueror

=head3 lotusnotes

=head3 lynx links elinks

=head3 mobile_safari

=head3 mosaic

=head3 mozilla

=head3 neoplanet neoplanet2

=head3 netfront

=head3 netscape nav2 nav3 nav4 nav4up nav45 nav45up navgold nav6 nav6up

=head3 opera opera3 opera4 opera5 opera6 opera7

=head3 realplayer

The realplayer method above tests for the presence of either the RealPlayer
plug-in "(r1 " or the browser "RealPlayer".

=head3 realplayer_browser

The realplayer_browser method tests for the presence of the RealPlayer
browser (but returns 0 for the plugin).

=head3 safari

=head3 staroffice

=head3 webtv

Netscape 6, even though it's called six, in the User-Agent string has version
number 5. The nav6 and nav6up methods correctly handle this quirk. The Firefox
test correctly detects the older-named versions of the browser (Phoenix,
Firebird).

=head2 Device related properties

The following methods are available, each returning a true or false value.

=head3 android

=head3 audrey

=head3 avantgo

=head3 blackberry

=head3 dsi

=head3 iopener

=head3 iphone

=head3 ipod

=head3 ipad

=head3 kindle

=head3 n3ds

=head3 obigo

=head3 palm

=head3 webos

=head3 wap

=head3 psp

=head3 ps3

=head2 Robot properties

The following additional methods are available, each returning a true or false
value. This is by no means a complete list of robots that exist on the Web.

=head3 ahrefs

=head3 altavista

=head3 apache

=head3 askjeeves

=head3 baidu

=head3 curl

=head3 facebook

=head3 getright

=head3 golib

=head3 google

=head3 googleadsbot

=head3 googleadsense

=head3 googlemobile

=head3 indy

=head3 infoseek

=head3 java

=head3 linkexchange

=head3 lwp

=head3 lycos

=head3 mj12bot

=head3 msn (same as bing)

=head3 puf

=head3 rubylib

=head3 slurp

=head3 webcrawler

=head3 wget

=head3 yahoo

=head3 yandex

=head3 yandeximages

=head2 Engine properties

The following properties indicate if a particular rendering engine is
being used.

=head3 webkit

=head3 gecko

=head3 trident

=head3 presto

=head3 khtml

=head1 Other methods

=head2 user_agent()

Returns the value of the user agent string.

Calling this method with a parameter to set the user agent has now
been removed; please use HTTP::BrowserDetect->new() to pass the user
agent string.

=head2 country()

Returns the country string as it may be found in the user agent string. This
will be in the form of an upper case 2 character code. ie: US, DE, etc

=head2 language()

Returns the language string as it is found in the user agent string. This will
be in the form of an upper case 2 character code. ie: EN, DE, etc

=head2 engine()

Returns the rendering engine, one of the following:

gecko, webkit, khtml, trident, ie, presto, netfront

Note that this returns "webkit" for webkit based browsers (including
Chrome/Blink). This is a change from previous versions of this
library, which returned "KHTML" for webkit.

Returns C<undef> if none of the above rendering engines can be
detected.

=head2 engine_string()

Returns a human formatted version of the rendering engine.

Note that this returns "WebKit" for webkit based browsers (including
Chrome/Blink). This is a change from previous versions of this
library, which returned "KHTML" for webkit.

Returns C<undef> if none of the known rendering engines can be
detected.

=head2 engine_version()
=head2 engine_major()
=head2 engine_minor()
=head2 engine_beta()

Returns version information for the rendering engine, if any can be
detected. The format is the same as for the browser_version()
functions.

=head1 Deprecated methods

=head2 device_name()

Deprecated alternate name for device_string()

=head2 version()

This is probably not what you want.  Please use either browser_version() or
engine_version() instead.

Returns the version (major and minor) as a string.

This function returns wrong values for some Safari versions, for
compatibility with earlier code. browser_version() returns correct
version numbers for Safari.

=head2 major()

This is probably not what you want. Please use either browser_major()
or engine_major() instead.

Returns the integer portion of the browser version as a string.

This function returns wrong values for some Safari versions, for
compatibility with earlier code. browser_version() returns correct
version numbers for Safari.

=head2 minor()

This is probably not what you want. Please use either browser_minor()
or engine_minor() instead.

Returns the decimal portion of the browser version as a string.

This function returns wrong values for some Safari versions, for
compatibility with earlier code. browser_version() returns correct
version numbers for Safari.

=head2 beta()

This is probably not what you want. Please use browser_beta() instead.

Returns the beta version, consisting of any characters after the major
and minor version number, as a string.

This function returns wrong values for some Safari versions, for
compatibility with earlier code. browser_version() returns correct
version numbers for Safari.

=head2 public_version()
=head2 public_major()
=head2 public_minor()
=head2 public_beta()

Deprecated alternate names for the browser_version() family of
functions.

=head2 gecko_version()

If a Gecko rendering engine is used (as in Mozilla or Firefox), returns the
engine version. If no Gecko browser is being used, or the version
number can't be detected, returns undef.

This is an old function, preserved for compatibility; please use
engine_version() in new code.

=head1 CREDITS

Lee Semel, lee@semel.net (Original Author)

Peter Walsham (co-maintainer)

Olaf Alders, C<olaf at wundercounter.com> (co-maintainer)

=head1 ACKNOWLEDGEMENTS

Thanks to the following for their contributions:

cho45

Leonardo Herrera

Denis F. Latypoff

merlynkline

Simon Waters

Toni Cebrin

Florian Merges

david.hilton.p

Steve Purkis

Andrew McGregor

Robin Smidsrod

Richard Noble

Josh Ritter

Mike Clarke

Marc Sebastian Pelzer

Alexey Surikov

Maros Kollar

Jay Rifkin

Luke Saunders

Jacob Rask

Heiko Weber

Jon Jensen

Jesse Thompson

Graham Barr

Enrico Sorcinelli

Olivier Bilodeau

Yoshiki Kurihara

Paul Findlay

Uwe Voelker

Douglas Christopher Wilson

John Oatis

Atsushi Kato

Ronald J. Kimball

Bill Rhodes

Thom Blake

Aran Deltac

yeahoffline

David Ihnen

Hao Wu

Perlover

=head1 TO DO

POD coverage is not 100%.

=head1 SEE ALSO

"Browser ID (User-Agent) Strings", L<http://www.zytrax.com/tech/web/browser_ids.htm>

L<HTML::ParseBrowser>.

=head1

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc HTTP::BrowserDetect

You can also look for information at:

=over 4

=item * GitHub Source Repository

L<http://github.com/oalders/http-browserdetect>

=item * Reporting Issues

L<https://github.com/oalders/http-browserdetect/issues>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/HTTP-BrowserDetect>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/HTTP-BrowserDetect>

=item * Search CPAN

L<https://metacpan.org/module/HTTP::BrowserDetect>

=back

=head1 BUGS AND LIMITATIONS

The biggest limitation at this point is the test suite, which really needs to
have many more UserAgent strings to test against.

=head1 CONTRIBUTING

Patches are certainly welcome, with many thanks for the excellent contributions
which have already been received. The preferred method of patching would be to
fork the GitHub repo and then send me a pull request, but plain old patch files
are also welcome.

If you're able to add test cases, this will speed up the time to release your
changes. Just edit t/useragents.json so that the test coverage includes any
changes you have made. Please contact me if you have any questions.

This distribution uses L<Dist::Zilla>. If you're not familiar with this module,
please see L<https://github.com/oalders/http-browserdetect/issues/5> for some
helpful tips to get you started.

=cut
