/**
 *
 * @singleton
 *
 */
component extends="cfconcurrent.ExecutorService" {

	/**
	 * TODO: configuration options for maxCorrent/QueueSize
	 *
	 */
	public function init(
		  numeric maxConcurrent     = 0
		, numeric maxWorkQueueSize  = 10000
		, string  threadNamePattern = "PresideTaskManagerPool-Thread-${threadno}"
	){
		super.init( argumentCollection=arguments, serviceName="PresideScheduledTaskExecutorService" );

		return this;
	}

	public void function shutdown() {
		super.stop();
	}

}