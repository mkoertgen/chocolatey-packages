# <img src="https://visualvm.github.io/images/visualvm_logo_small.png" width="111" height="29"/> [VisualVM](https://chocolatey.org/packages/visualvm)

VisualVM is a visual tool integrating commandline JDK tools and lightweight profiling capabilities.
Designed for both development and production time use.

## Features

VisualVM monitors and troubleshoots applications running on Java 1.4+ from many vendors using various technologies including jvmstat, JMX, Serviceability Agent (SA) and Attach API.

VisualVM perfectly fits all the requirements of application developers, system administrators, quality engineers and end users.

### Display Local And Remote Java Processes

![Features 1](https://visualvm.github.io/images/features_1.png)

VisualVM automatically detects and lists locally and remotely running Java applications (jstatd must be running on the remote host). You can also define applications manually by JMX connection.

### Display Process Configuration And Environment

![Features 2](https://visualvm.github.io/images/features_2.png)

For each process VisualVM shows basic runtime information: PID, main class, arguments passed to java process, JVM version, JDK home, JVM flags and arguments and System properties.

### Monitor Process Performance And Memory

![Features 3](https://visualvm.github.io/images/features_3.png)

VisualVM monitors application CPU usage, GC activity, heap and metaspace / permanent generation memory, number of loaded classes and running threads.

### Visualize Process Threads

![Features 4](https://visualvm.github.io/images/features_4.png)

All threads running in a Java process are displayed in a timeline together with aggregated Running, Sleeping, Wait, Park and Monitor times.

### Profile Performance And Memory Usage

![Features 5](https://visualvm.github.io/images/features_5.png)

VisualVM provides basic profiling capabilities for analyzing application performance and memory management. Both sampling and instrumentation profilers are available.

### Take And Display Thread Dumps

![Features 6](https://visualvm.github.io/images/features_6.png)

VisualVM takes and displays thread dumps for an immediate insight of what is going on in the target process. Simultaneous thread dumps of multiple processes help to discover distributed deadlocks.

### Take And Browse Heap Dumps

![Features 7](https://visualvm.github.io/images/features_7.png)

VisualVM creates and views .hprof memory snapshots created on demand or on OutOfMemoryError to help with uncovering inefficient heap usage and debugging memory leaks.

### Analyze Core Dumps

![Features 8](https://visualvm.github.io/images/features_8.png)

VisualVM is able to read basic information about the crashed Java process and its environment from a core dump as well as extract and open the contained thread and heap dumps.

### Analyze Applications Offline

![Features 9](https://visualvm.github.io/images/features_9.png)

VisualVM is able to save application configuration and runtime environment together with all taken thread dumps, heap dumps and profiler snaphots into a single application snapshot which can be later processed offline.
