class storm::redhat
{

	package { 'unzip':
	    ensure  => installed,
    }
	
    package { 'zeromq':
    	provider	=> rpm,
        source		=> 'https://dl.dropbox.com/u/25821613/storm/zeromq-2.1.7-1.el6.x86_64.rpm',
        ensure      => '2.1.7-1,el6',
    }

    package { 'zeromq-devel':
    	provider	=> rpm,
        source		=> 'https://dl.dropbox.com/u/25821613/storm/zeromq-devel-2.1.7-1.el6.x86_64.rpm',
        ensure      => '2.1.7-1,el6',
    }

    package { 'jzmq':
    	ensure		=> '2.1.0-1.el6',
    	provider	=> rpm,
    	source		=> 'https://dl.dropbox.com/u/25821613/storm/jzmq-2.1.0-1.el6.x86_64.rpm',
    }

    package { 'jzmq-devel':
    	ensure		=> '2.1.0-1.el6',
    	provider	=> rpm,
    	source		=> 'https://dl.dropbox.com/u/25821613/storm/jzmq-devel-2.1.0-1.el6.x86_64.rpm',
    }


    package { 'storm':
    	ensure		=> '0.8.2-1.el6',
    	provider	=> rpm,
    	source		=> 'https://dl.dropbox.com/u/25821613/storm/storm-0.8.2-1.el6.x86_64.rpm',
    	require		=> [Package['zeromq'], Package['jzmq']]
    }

    package { 'storm-service':
    	ensure		=> '0.8.2-1.el6',
    	provider	=> rpm,
    	source		=> 'https://dl.dropbox.com/u/25821613/storm/storm-service-0.8.2-1.el6.x86_64.rpm',
    	require		=> [Package['storm-service']]
    }


}