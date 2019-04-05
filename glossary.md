# Definitions

This document defines the terminology used in the Jolie website and documentation.

## Architectural Paradigm

These terms are general: they refer to the paradigm of service programming.
**come detto in chat io qui parlerei direttamente del paradigma linguistico senza differenziare, in altri articoli o nel sito possiamo poi spiegare cosa intendiamo noi come paradigma linguistico**

### Operation
A functionality exposed by a service.

### Interface
A machine-readable and -checkable declaration of a set of operations, which defines an API.
An interface acts as the contract between a service and its clients.

### Ports
Ports are endpoints used for sending and receiving messages.
There are two kind of ports:
- _input ports_ are used for receiving messages;
- and _output ports_ are used for sending messages.

A port includes at least three elements:
- the location at which the port is deployed, e.g., an IP address;
- the transport protocol used for communications through the port;
- the interface that the port makes accessible.

### Connection
We say that an output port is _connected to_ an input port when it is meant that messages sent through the former will reach the latter.

This typically happens when the output port has the same location and protocol as the target input port, but
network or container configurations might alter this. As such, knowing the connections in a system requires looking both at 
the definitions of the involved ports and how they are deployed in the system.

### Service (or microservice)
A service is a running software application that supplies APIs in the form of operations available at its input ports. It communicates with other services by message passing.

### Service definition
The code that, when executed, implements a service. When clear from the context, we simply use the word service interchangeably.

### Conversation
A conversation is a series of related message exchanges between two or more services.

During a conversation between a client and a service, the set of available operations offered by the service to the client might change over time (e.g., after successfully logging in the client might gain access to more operations).

A service is always willing to serve requests for its available API.

### Behaviour
The part of the service definition which defines the logics to be executed at runtime for implementing a service's API. Behaviours can send and/or receive messages, and perform internal computation.

### Process
A running instance of a behaviour, equipped with its own private state and message queues.

### Service dependency
When a service `A` has an output port that needs to be connected to another service `B` in order for the service `A` to function, we say that service `A` _depends on_ service `B`.

![](.gitbook/assets/definitions.png)

### Service Environment
The execution context where one or more services can be executed

### Service Frame
A group of services running in the same service environment, which can communicate by using in-application shared-memory connections that cannot be accessed from outside the frame. A Service Frame can always be represented as a single service when hiding the internal connections.

### Service Circuit
A connected composition of services or frames.

-----------------
## Jolie (linguistic paradigm)

These terms are specific to the Jolie language.
**CG: caverei**

### Jolie service

**FM: ho reso questa def la living thing, altrimenti un Jolie service non e' un service, il che non torna in Inglese. I qualifiers non cambiano la natura di un oggetto. Una mela rossa e' sempre una mela. Una frase indiana e' sempre una frase.**

**FM: questo cambiamento semplifica anche un po' del testo nelle defs in fondo.**

**FM: dobbiamo stare attenti con questa "unit", perche' in Jolie ci sono altri elementi di codice riusabile, tipo le define.
Quando la gente dice per un linguaggio che "everything is an object", vuol dire che tutti i _valori_ sono oggetti. (Non e' vero in Java, ma e' vero in Scala, ruby, kotlin..)
Da noi i valori sono alberi, il normale discorso non torna.
Quindi dobbiamo essere specifici su cosa intendiamo. Per ora ho messo "component".
**

A service implemented in the Jolie language.
The unit of reusable components in Jolie is a service (all components are services).
**caverei la definizione di Jolie service**


