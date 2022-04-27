.class public final Lokhttp3/mockwebserver/MockWebServer;
.super Lorg/junit/rules/ExternalResource;
.source "MockWebServer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/mockwebserver/MockWebServer$SocketHandler;,
        Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;,
        Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;,
        Lokhttp3/mockwebserver/MockWebServer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMockWebServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MockWebServer.kt\nokhttp3/mockwebserver/MockWebServer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n1#1,1151:1\n1#2:1152\n92#3,11:1153\n92#3,11:1164\n*E\n*S KotlinDebug\n*F\n+ 1 MockWebServer.kt\nokhttp3/mockwebserver/MockWebServer\n*L\n393#1,11:1153\n468#1,11:1164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u007f2\u00020\u00012\u00020\u0002:\u0007\u007f\u0080\u0001\u0081\u0001\u0082\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010G\u001a\u00020HH\u0002J\u0008\u0010I\u001a\u00020HH\u0014J\u0008\u0010J\u001a\u00020HH\u0014J\u0008\u0010K\u001a\u00020HH\u0016J\u0018\u0010L\u001a\u00020H2\u0006\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\u001cH\u0002J\u000e\u0010O\u001a\u00020H2\u0006\u0010P\u001a\u00020QJ\r\u0010\"\u001a\u00020\rH\u0007\u00a2\u0006\u0002\u0008RJ\r\u00103\u001a\u00020\rH\u0007\u00a2\u0006\u0002\u0008SJ0\u0010T\u001a\u00020H2\u0006\u0010N\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u0002062\u0006\u0010P\u001a\u00020QH\u0002J\u0006\u0010Z\u001a\u00020HJ\u0010\u0010[\u001a\u00020H2\u0006\u0010\\\u001a\u00020\u001cH\u0002J\u0013\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0007\u00a2\u0006\u0002\u0008]J\u0010\u0010^\u001a\u00020H2\u0006\u0010U\u001a\u00020VH\u0002J(\u0010_\u001a\u0002062\u0006\u0010N\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010M\u001a\u00020\rH\u0002J\u0006\u0010`\u001a\u00020HJ\u0006\u0010a\u001a\u00020HJ\u0010\u0010b\u001a\u00020H2\u0006\u0010\\\u001a\u00020\u001cH\u0002J\u0015\u0010\n\u001a\u00020H2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008cJ\u0015\u0010)\u001a\u00020H2\u0006\u0010%\u001a\u00020&H\u0007\u00a2\u0006\u0002\u0008dJ\u001b\u00100\u001a\u00020H2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0007\u00a2\u0006\u0002\u0008]J\u0015\u0010=\u001a\u00020H2\u0006\u0010:\u001a\u000209H\u0007\u00a2\u0006\u0002\u0008eJ\u0006\u0010f\u001a\u00020HJ\u0010\u0010g\u001a\u00020H2\u0006\u0010h\u001a\u00020\u0007H\u0002J\u0016\u0010i\u001a\u00020H2\u0006\u0010j\u001a\u00020k2\u0006\u0010!\u001a\u00020\rJ\u0010\u0010i\u001a\u00020H2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010i\u001a\u00020H2\u0008\u0008\u0002\u0010!\u001a\u00020\rH\u0007J\u0006\u0010l\u001a\u000206J\u0018\u0010l\u001a\u0004\u0018\u0001062\u0006\u0010m\u001a\u00020\u00072\u0006\u0010n\u001a\u00020oJ8\u0010p\u001a\u00020H2\u0006\u0010q\u001a\u00020Q2\u0006\u0010N\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010r\u001a\u00020\u00072\u0006\u0010s\u001a\u00020&H\u0002J\u0006\u0010t\u001a\u00020uJ\u0008\u0010v\u001a\u00020\u0015H\u0016J\u000e\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u0015J\u0016\u0010z\u001a\u00020H2\u0006\u0010?\u001a\u00020@2\u0006\u0010F\u001a\u00020&J\u0018\u0010{\u001a\u00020H2\u0006\u0010W\u001a\u00020X2\u0006\u0010|\u001a\u00020}H\u0002J \u0010~\u001a\u00020H2\u0006\u0010N\u001a\u00020\u001c2\u0006\u0010W\u001a\u00020X2\u0006\u0010P\u001a\u00020QH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u001a\u001a&\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c \u001d*\u0012\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c\u0018\u00010\u001e0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u001f\u001a&\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010 0  \u001d*\u0012\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010 0 \u0018\u00010\u001e0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R2\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,8G@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0011\u00102\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010#R\u0014\u00104\u001a\u0008\u0012\u0004\u0012\u00020605X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010:\u001a\u0004\u0018\u0001092\u0008\u0010+\u001a\u0004\u0018\u0001098F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020EX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lokhttp3/mockwebserver/MockWebServer;",
        "Lorg/junit/rules/ExternalResource;",
        "Ljava/io/Closeable;",
        "()V",
        "atomicRequestCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "bodyLimit",
        "",
        "getBodyLimit",
        "()J",
        "setBodyLimit",
        "(J)V",
        "clientAuth",
        "",
        "dispatcher",
        "Lokhttp3/mockwebserver/Dispatcher;",
        "getDispatcher",
        "()Lokhttp3/mockwebserver/Dispatcher;",
        "setDispatcher",
        "(Lokhttp3/mockwebserver/Dispatcher;)V",
        "hostName",
        "",
        "getHostName",
        "()Ljava/lang/String;",
        "inetSocketAddress",
        "Ljava/net/InetSocketAddress;",
        "openClientSockets",
        "",
        "Ljava/net/Socket;",
        "kotlin.jvm.PlatformType",
        "",
        "openConnections",
        "Lokhttp3/internal/http2/Http2Connection;",
        "port",
        "getPort",
        "()I",
        "portField",
        "protocolNegotiationEnabled",
        "",
        "getProtocolNegotiationEnabled",
        "()Z",
        "setProtocolNegotiationEnabled",
        "(Z)V",
        "value",
        "",
        "Lokhttp3/Protocol;",
        "protocols",
        "()Ljava/util/List;",
        "setProtocols",
        "(Ljava/util/List;)V",
        "requestCount",
        "getRequestCount",
        "requestQueue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Lokhttp3/mockwebserver/RecordedRequest;",
        "serverSocket",
        "Ljava/net/ServerSocket;",
        "Ljavax/net/ServerSocketFactory;",
        "serverSocketFactory",
        "getServerSocketFactory",
        "()Ljavax/net/ServerSocketFactory;",
        "setServerSocketFactory",
        "(Ljavax/net/ServerSocketFactory;)V",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "started",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "taskRunnerBackend",
        "Lokhttp3/internal/concurrent/TaskRunner$RealBackend;",
        "tunnelProxy",
        "acceptConnections",
        "",
        "after",
        "before",
        "close",
        "dispatchBookkeepingRequest",
        "sequenceNumber",
        "socket",
        "enqueue",
        "response",
        "Lokhttp3/mockwebserver/MockResponse;",
        "-deprecated_port",
        "-deprecated_requestCount",
        "handleWebSocketUpgrade",
        "source",
        "Lokio/BufferedSource;",
        "sink",
        "Lokio/BufferedSink;",
        "request",
        "noClientAuth",
        "processHandshakeFailure",
        "raw",
        "-deprecated_protocols",
        "readEmptyLine",
        "readRequest",
        "requestClientAuth",
        "requireClientAuth",
        "serveConnection",
        "-deprecated_bodyLimit",
        "-deprecated_protocolNegotiationEnabled",
        "-deprecated_serverSocketFactory",
        "shutdown",
        "sleepIfDelayed",
        "delayMs",
        "start",
        "inetAddress",
        "Ljava/net/InetAddress;",
        "takeRequest",
        "timeout",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "throttledTransfer",
        "policy",
        "byteCount",
        "isRequest",
        "toProxyAddress",
        "Ljava/net/Proxy;",
        "toString",
        "url",
        "Lokhttp3/HttpUrl;",
        "path",
        "useHttps",
        "writeHeaders",
        "headers",
        "Lokhttp3/Headers;",
        "writeHttpResponse",
        "Companion",
        "Http2SocketHandler",
        "SocketHandler",
        "TruncatingBuffer",
        "mockwebserver"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final CLIENT_AUTH_NONE:I = 0x0

.field private static final CLIENT_AUTH_REQUESTED:I = 0x1

.field private static final CLIENT_AUTH_REQUIRED:I = 0x2

.field public static final Companion:Lokhttp3/mockwebserver/MockWebServer$Companion;

.field private static final UNTRUSTED_TRUST_MANAGER:Lokhttp3/mockwebserver/MockWebServer$Companion$UNTRUSTED_TRUST_MANAGER$1;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final atomicRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bodyLimit:J

.field private clientAuth:I

.field private dispatcher:Lokhttp3/mockwebserver/Dispatcher;

.field private inetSocketAddress:Ljava/net/InetSocketAddress;

.field private final openClientSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final openConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/internal/http2/Http2Connection;",
            ">;"
        }
    .end annotation
.end field

.field private portField:I

.field private protocolNegotiationEnabled:Z

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private started:Z

.field private final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

.field private final taskRunnerBackend:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

.field private tunnelProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/mockwebserver/MockWebServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->Companion:Lokhttp3/mockwebserver/MockWebServer$Companion;

    .line 1119
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$Companion$1;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockWebServer$Companion$1;-><init>()V

    check-cast v0, Lokhttp3/internal/duplex/MwsDuplexAccess;

    sput-object v0, Lokhttp3/internal/duplex/MwsDuplexAccess;->instance:Lokhttp3/internal/duplex/MwsDuplexAccess;

    .line 1133
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$Companion$UNTRUSTED_TRUST_MANAGER$1;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockWebServer$Companion$UNTRUSTED_TRUST_MANAGER$1;-><init>()V

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Lokhttp3/mockwebserver/MockWebServer$Companion$UNTRUSTED_TRUST_MANAGER$1;

    .line 1148
    const-class v0, Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 100
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 101
    new-instance v0, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    const/4 v1, 0x0

    const-string v2, "MockWebServer TaskRunner"

    .line 102
    invoke-static {v2, v1}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    .line 101
    invoke-direct {v0, v2}, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunnerBackend:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 103
    new-instance v2, Lokhttp3/internal/concurrent/TaskRunner;

    check-cast v0, Lokhttp3/internal/concurrent/TaskRunner$Backend;

    invoke-direct {v2, v0}, Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$Backend;)V

    iput-object v2, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 104
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->atomicRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide v2, 0x7fffffffffffffffL

    .line 120
    iput-wide v2, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    .line 146
    new-instance v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-direct {v0}, Lokhttp3/mockwebserver/QueueDispatcher;-><init>()V

    check-cast v0, Lokhttp3/mockwebserver/Dispatcher;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->portField:I

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    const/4 v2, 0x2

    new-array v2, v2, [Lokhttp3/Protocol;

    .line 177
    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v2, v1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v2, v0

    invoke-static {v2}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void
.end method

.method private final acceptConnections()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const-string v1, "serverSocket!!.accept()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v1

    .line 431
    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, v1, v0}, Lokhttp3/mockwebserver/MockWebServer;->dispatchBookkeepingRequest(ILjava/net/Socket;)V

    .line 433
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-direct {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->serveConnection(Ljava/net/Socket;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    sget-object v1, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " done accepting connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$acceptConnections(Lokhttp3/mockwebserver/MockWebServer;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lokhttp3/mockwebserver/MockWebServer;->acceptConnections()V

    return-void
.end method

.method public static final synthetic access$dispatchBookkeepingRequest(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/MockWebServer;->dispatchBookkeepingRequest(ILjava/net/Socket;)V

    return-void
.end method

.method public static final synthetic access$getAtomicRequestCount$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->atomicRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getClientAuth$p(Lokhttp3/mockwebserver/MockWebServer;)I
    .locals 0

    .line 100
    iget p0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return p0
.end method

.method public static final synthetic access$getLogger$cp()Ljava/util/logging/Logger;
    .locals 1

    .line 100
    sget-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static final synthetic access$getOpenClientSockets$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getOpenConnections$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getRequestQueue$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getServerSocket$p(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public static final synthetic access$getSslSocketFactory$p(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public static final synthetic access$getTaskRunner$p(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/internal/concurrent/TaskRunner;
    .locals 0

    .line 100
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    return-object p0
.end method

.method public static final synthetic access$getTunnelProxy$p(Lokhttp3/mockwebserver/MockWebServer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return p0
.end method

.method public static final synthetic access$handleWebSocketUpgrade(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 100
    invoke-direct/range {p0 .. p5}, Lokhttp3/mockwebserver/MockWebServer;->handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public static final synthetic access$processHandshakeFailure(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->processHandshakeFailure(Ljava/net/Socket;)V

    return-void
.end method

.method public static final synthetic access$readRequest(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/mockwebserver/MockWebServer;->readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClientAuth$p(Lokhttp3/mockwebserver/MockWebServer;I)V
    .locals 0

    .line 100
    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public static final synthetic access$setServerSocket$p(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/ServerSocket;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method public static final synthetic access$setSslSocketFactory$p(Lokhttp3/mockwebserver/MockWebServer;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static final synthetic access$setTunnelProxy$p(Lokhttp3/mockwebserver/MockWebServer;Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return-void
.end method

.method public static final synthetic access$sleepIfDelayed(Lokhttp3/mockwebserver/MockWebServer;J)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    return-void
.end method

.method public static final synthetic access$throttledTransfer(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 0

    .line 100
    invoke-direct/range {p0 .. p7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    return-void
.end method

.method public static final synthetic access$writeHttpResponse(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method private final dispatchBookkeepingRequest(ILjava/net/Socket;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 662
    new-instance v12, Lokhttp3/mockwebserver/RecordedRequest;

    .line 663
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-string v1, ""

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    move v7, p1

    move-object v8, p2

    .line 662
    invoke-direct/range {v0 .. v11}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 664
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->atomicRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 665
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v12}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {p1, v12}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method

.method private final handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    const-string v2, "Sec-WebSocket-Key"

    .line 760
    invoke-virtual {v0, v2}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    sget-object v3, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->acceptHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {v9, v3, v2}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    .line 763
    invoke-direct {v1, v2, v8, v9}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    .line 766
    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getTlsVersion()Lokhttp3/TlsVersion;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "https"

    goto :goto_0

    :cond_0
    const-string v2, "http"

    :goto_0
    const-string v3, "Host"

    .line 767
    invoke-virtual {v0, v3}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 768
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 770
    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 771
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    .line 772
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v14, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput-char v4, v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 773
    new-instance v4, Lokhttp3/Response$Builder;

    invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V

    .line 774
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 775
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 776
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 777
    invoke-virtual {v3, v12}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 778
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 779
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v15

    .line 781
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v14, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 782
    new-instance v20, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;

    const/4 v6, 0x0

    move-object/from16 v2, v20

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lokhttp3/mockwebserver/MockWebServer$handleWebSocketUpgrade$streams$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lokio/BufferedSource;Lokio/BufferedSink;ZLokio/BufferedSource;Lokio/BufferedSink;)V

    .line 785
    new-instance v2, Lokhttp3/internal/ws/RealWebSocket;

    .line 786
    iget-object v11, v1, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 788
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 789
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    check-cast v3, Ljava/util/Random;

    const-wide/16 v4, 0x0

    .line 791
    sget-object v6, Lokhttp3/internal/ws/WebSocketExtensions;->Companion:Lokhttp3/internal/ws/WebSocketExtensions$Companion;

    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;

    move-result-object v17

    const-wide/16 v18, 0x0

    move-object v10, v2

    move-object v6, v14

    move-object v14, v3

    move-object v3, v15

    move-wide v15, v4

    .line 785
    invoke-direct/range {v10 .. v19}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;JLokhttp3/internal/ws/WebSocketExtensions;J)V

    .line 794
    invoke-virtual/range {p5 .. p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    check-cast v5, Lokhttp3/WebSocket;

    invoke-virtual {v4, v5, v3}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MockWebServer WebSocket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lokhttp3/mockwebserver/RecordedRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    move-object/from16 v3, v20

    check-cast v3, Lokhttp3/internal/ws/RealWebSocket$Streams;

    invoke-virtual {v2, v0, v3}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 798
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V

    .line 801
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :goto_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 803
    :try_start_1
    check-cast v0, Ljava/lang/Exception;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 805
    :goto_3
    move-object/from16 v2, p2

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private final processHandshakeFailure(Ljava/net/Socket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TLS"

    .line 647
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    .line 648
    sget-object v3, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Lokhttp3/mockwebserver/MockWebServer$Companion$UNTRUSTED_TRUST_MANAGER$1;

    check-cast v3, Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string v2, "context"

    .line 649
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    const-string v3, "raw.inetAddress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v3

    .line 650
    invoke-virtual {v0, p1, v2, v3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 653
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 654
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :catch_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    return-void
.end method

.method private final readEmptyLine(Lokio/BufferedSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p1

    .line 904
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected empty but was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 678
    new-instance v10, Lokhttp3/Headers$Builder;

    invoke-direct {v10}, Lokhttp3/Headers$Builder;-><init>()V

    .line 682
    new-instance v11, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;

    iget-wide v2, v9, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    invoke-direct {v11, v2, v3}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;-><init>(J)V

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    const/4 v12, 0x0

    .line 684
    move-object v13, v12

    check-cast v13, Ljava/io/IOException;

    .line 687
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    :try_start_1
    move-object v2, v14

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-nez v2, :cond_1a

    const-wide/16 v2, -0x1

    move-wide/from16 v16, v2

    move v4, v6

    move v5, v4

    .line 693
    :goto_1
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    .line 694
    move-object/from16 v18, v7

    check-cast v18, Ljava/lang/CharSequence;

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v18, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    move/from16 v18, v6

    :goto_2
    const-string v12, "null cannot be cast to non-null type kotlin.CharSequence"

    const/4 v8, 0x2

    if-eqz v18, :cond_d

    .line 712
    :try_start_2
    iget-object v7, v9, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v7}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v7

    if-eqz v4, :cond_2

    .line 713
    sget-object v4, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    if-eq v7, v4, :cond_3

    :cond_2
    sget-object v4, Lokhttp3/mockwebserver/SocketPolicy;->CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v7, v4, :cond_4

    :cond_3
    const-string v4, "HTTP/1.1 100 Continue\r\n"

    .line 714
    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v4, "Content-Length: 0\r\n"

    .line 715
    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v4, "\r\n"

    .line 716
    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 717
    invoke-interface/range {p3 .. p3}, Lokio/BufferedSink;->flush()V

    .line 721
    :cond_4
    iget-object v1, v9, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v1}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v18

    cmp-long v1, v16, v2

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-lez v1, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move v12, v6

    .line 724
    :goto_3
    move-object v1, v11

    check-cast v1, Lokio/Sink;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v0, v6

    move-wide/from16 v6, v16

    move-object/from16 v22, v13

    move v13, v8

    move/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    move v8, v12

    goto :goto_5

    :cond_6
    move-object/from16 v22, v13

    move v13, v8

    move v8, v6

    if-eqz v5, :cond_9

    .line 728
    :goto_4
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    .line 730
    invoke-direct {v9, v0}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    const/4 v8, 0x1

    goto :goto_5

    .line 733
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    move-object v2, v11

    check-cast v2, Lokio/Sink;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    int-to-long v6, v1

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v8, v16

    .line 734
    invoke-direct/range {v1 .. v8}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 736
    invoke-direct {v9, v0}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    const/4 v8, 0x0

    goto :goto_4

    .line 728
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v8, 0x0

    :goto_5
    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 740
    invoke-static {v14, v0, v1, v13, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_b

    .line 741
    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_c

    move-object v13, v14

    move-object/from16 v21, v22

    goto/16 :goto_c

    .line 742
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request must not have a body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_d
    move-object/from16 v22, v13

    move v13, v8

    .line 697
    invoke-static {v10, v7}, Lokhttp3/internal/Internal;->addHeaderLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 698
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v7, :cond_19

    :try_start_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    cmp-long v13, v16, v2

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    if-nez v13, :cond_10

    :try_start_4
    const-string v3, "content-length:"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x2

    .line 699
    invoke-static {v6, v3, v1, v13, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v0, 0xf

    if-eqz v7, :cond_f

    .line 700
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_8
    const-string v0, "transfer-encoding:"

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 702
    invoke-static {v6, v0, v1, v3, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x12

    if-eqz v6, :cond_13

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_12

    .line 703
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chunked"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v5, 0x1

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    const-string v0, "expect:"

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 706
    invoke-static {v6, v0, v1, v3, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x7

    if-eqz v6, :cond_16

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_15

    .line 707
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "100-continue"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    move v4, v3

    goto :goto_a

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v3, 0x1

    :cond_18
    :goto_a
    move-object/from16 v0, p2

    move v6, v1

    move-object v12, v7

    move-object/from16 v13, v22

    const-wide/16 v2, -0x1

    move-object/from16 v1, p3

    goto/16 :goto_1

    .line 698
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1a
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "no request because the stream is exhausted"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    const-string v14, ""

    :goto_b
    move-object/from16 v21, v0

    move-object v13, v14

    .line 748
    :goto_c
    new-instance v0, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v10}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v14

    invoke-virtual {v11}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->getReceivedByteCount$mockwebserver()J

    move-result-wide v16

    .line 749
    invoke-virtual {v11}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->getBuffer$mockwebserver()Lokio/Buffer;

    move-result-object v18

    move-object v12, v0

    move/from16 v19, p4

    move-object/from16 v20, p1

    .line 748
    invoke-direct/range {v12 .. v21}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;Ljava/io/IOException;)V

    return-object v0
.end method

.method private final serveConnection(Ljava/net/Socket;)V
    .locals 10

    .line 468
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockWebServer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1168
    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lokhttp3/mockwebserver/MockWebServer$serveConnection$$inlined$execute$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V

    check-cast v1, Lokhttp3/internal/concurrent/Task;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    return-void
.end method

.method private final sleepIfDelayed(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 840
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized start(Ljava/net/InetSocketAddress;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 381
    iput-boolean v1, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    .line 383
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 385
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getServerSocketFactory()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 388
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 389
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/net/SocketAddress;

    const/16 v1, 0x32

    invoke-virtual {v0, p1, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 391
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer;->portField:I

    .line 393
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer;->portField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    .line 1157
    new-instance v8, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;

    move-object v2, v8

    move-object v3, v5

    move v4, v6

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lokhttp3/mockwebserver/MockWebServer$start$$inlined$execute$1;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/mockwebserver/MockWebServer;)V

    check-cast v8, Lokhttp3/internal/concurrent/Task;

    invoke-virtual {p1, v8, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "start() already called"

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic start$default(Lokhttp3/mockwebserver/MockWebServer;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->start(I)V

    return-void
.end method

.method private final throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-nez v2, :cond_0

    return-void

    .line 860
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 861
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getThrottleBytesPerPeriod()J

    move-result-wide v3

    .line 862
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Lokhttp3/mockwebserver/MockResponse;->getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const/4 v5, 0x2

    int-to-long v9, v5

    .line 864
    div-long v9, p5, v9

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz p7, :cond_1

    .line 866
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v6

    sget-object v12, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v6, v12, :cond_2

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v6

    sget-object v12, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v6, v12, :cond_2

    goto :goto_0

    :cond_2
    move v5, v11

    :goto_0
    move-wide/from16 v11, p5

    .line 871
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    move-wide v13, v0

    :goto_2
    cmp-long v6, v13, v3

    if-gez v6, :cond_7

    sub-long v0, v3, v13

    .line 875
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v15, v3

    if-eqz v5, :cond_3

    sub-long v3, v11, v9

    .line 878
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    move-object/from16 v3, p3

    .line 881
    invoke-interface {v3, v2, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v17, -0x1

    cmp-long v4, v0, v17

    if-nez v4, :cond_4

    return-void

    :cond_4
    move-object/from16 v4, p4

    .line 884
    invoke-interface {v4, v2, v0, v1}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 885
    invoke-interface/range {p4 .. p4}, Lokio/BufferedSink;->flush()V

    add-long/2addr v13, v0

    sub-long/2addr v11, v0

    if-eqz v5, :cond_5

    cmp-long v0, v11, v9

    if-nez v0, :cond_5

    .line 890
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->close()V

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v6, v11, v0

    if-nez v6, :cond_6

    return-void

    :cond_6
    move-wide v3, v15

    goto :goto_2

    :cond_7
    move-object/from16 v6, p0

    move-wide v15, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 897
    invoke-direct {v6, v7, v8}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    move-wide v3, v15

    goto :goto_1

    :cond_8
    move-object/from16 v6, p0

    return-void
.end method

.method private final writeHeaders(Lokio/BufferedSink;Lokhttp3/Headers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    invoke-virtual {p2}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 829
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v2, ": "

    .line 830
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 831
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 832
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    goto :goto_0

    .line 834
    :cond_0
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 835
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method private final writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0}, Lokhttp3/mockwebserver/MockResponse;->getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    .line 812
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v0, "\r\n"

    .line 813
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 815
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lokhttp3/mockwebserver/MockWebServer;->writeHeaders(Lokio/BufferedSink;Lokhttp3/Headers;)V

    .line 817
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1}, Lokhttp3/mockwebserver/MockResponse;->getBodyDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(J)V

    .line 819
    move-object v6, v0

    check-cast v6, Lokio/BufferedSource;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v10}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 821
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 822
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getTrailers()Lokhttp3/Headers;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lokhttp3/mockwebserver/MockWebServer;->writeHeaders(Lokio/BufferedSink;Lokhttp3/Headers;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final -deprecated_bodyLimit(J)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "run { this.bodyLimit = bodyLimit }"
            imports = {}
        .end subannotation
    .end annotation

    .line 246
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockWebServer;

    iput-wide p1, v0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-void
.end method

.method public final -deprecated_port()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "port"
            imports = {}
        .end subannotation
    .end annotation

    .line 206
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v0

    return v0
.end method

.method public final -deprecated_protocolNegotiationEnabled(Z)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "run { this.protocolNegotiationEnabled = protocolNegotiationEnabled }"
            imports = {}
        .end subannotation
    .end annotation

    .line 255
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockWebServer;

    .line 256
    iput-boolean p1, v0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return-void
.end method

.method public final -deprecated_protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "protocols"
            imports = {}
        .end subannotation
    .end annotation

    .line 271
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_protocols(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "run { this.protocols = protocols }"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->setProtocols(Ljava/util/List;)V

    return-void
.end method

.method public final -deprecated_requestCount()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "requestCount"
            imports = {}
        .end subannotation
    .end annotation

    .line 341
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public final -deprecated_serverSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "run { this.serverSocketFactory = serverSocketFactory }"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "serverSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    move-object v0, p0

    check-cast v0, Lokhttp3/mockwebserver/MockWebServer;

    .line 222
    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    return-void
.end method

.method protected declared-synchronized after()V
    .locals 4

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 463
    :try_start_1
    sget-object v1, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "MockWebServer shutdown failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized before()V
    .locals 3

    monitor-enter p0

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    :try_start_1
    invoke-static {p0, v0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->start$default(Lokhttp3/mockwebserver/MockWebServer;IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 197
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V

    return-void
.end method

.method public final enqueue(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    if-eqz v0, :cond_0

    check-cast v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {p1}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type okhttp3.mockwebserver.QueueDispatcher"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBodyLimit()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-wide v0
.end method

.method public final getDispatcher()Lokhttp3/mockwebserver/Dispatcher;
    .locals 1

    .line 146
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 158
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "inetSocketAddress!!.address"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inetSocketAddress!!.address.canonicalHostName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 152
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer;->portField:I

    return v0
.end method

.method public final getProtocolNegotiationEnabled()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return v0
.end method

.method public final getRequestCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->atomicRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 124
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 127
    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public final noClientAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public final protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final requestClientAuth()V
    .locals 1

    const/4 v0, 0x1

    .line 300
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public final requireClientAuth()V
    .locals 1

    const/4 v0, 0x2

    .line 310
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->clientAuth:I

    return-void
.end method

.method public final setBodyLimit(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-void
.end method

.method public final setDispatcher(Lokhttp3/mockwebserver/Dispatcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-void
.end method

.method public final setProtocolNegotiationEnabled(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return-void
.end method

.method public final setProtocols(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 180
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 183
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 187
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void

    .line 186
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Protocol?>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 131
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "serverSocketFactory must not be set after start()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final declared-synchronized shutdown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 451
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->activeQueues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/concurrent/TaskQueue;

    .line 452
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/TaskQueue;->idleLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 453
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gave up waiting for queue to shut down"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 456
    :cond_3
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->taskRunnerBackend:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    const-string v0, "shutdown() before start()"

    .line 445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lokhttp3/mockwebserver/MockWebServer;->start$default(Lokhttp3/mockwebserver/MockWebServer;IILjava/lang/Object;)V

    return-void
.end method

.method public final start(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    .line 361
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "InetAddress.getByName(\"localhost\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public final start(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "inetAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public final takeRequest()Lokhttp3/mockwebserver/RecordedRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "requestQueue.take()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/mockwebserver/RecordedRequest;

    return-object v0
.end method

.method public final takeRequest(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/RecordedRequest;

    return-object p1
.end method

.method public final toProxyAddress()Ljava/net/Proxy;
    .locals 3

    .line 209
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 210
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "inetSocketAddress!!.address"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 211
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {v1, v2, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer;->portField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final url(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 232
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final useHttps(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 1

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 280
    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return-void
.end method
