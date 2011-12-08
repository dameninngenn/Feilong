use inc::Module::Install;
name 'Feilong';
all_from 'lib/Feilong.pm';


requires (
    'Ze' => 0, # https://github.com/tomyhero/Ze
    'Plack' => 0,
    'Plack::Middleware::Static' => 0,
    'Plack::Middleware::ReverseProxy' => 0,
    'Try::Tiny' => 0,
    'Text::Xslate' => 0,
    'Starman' => 0,
    'Net::Server::SS::PreFork' => 0,
);


test_requires(
    'Test::LoadAllModules' => 0,
);


tests_recursive;

build_requires 'Test::More';
auto_include;
WriteAll;
