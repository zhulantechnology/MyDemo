.class public Lcom/zp/rp/client/DefaultReverseProxyClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zp/rp/MessageDeliver;
.implements Lcom/zp/rp/client/SocketSession;
.implements Ljava/lang/Runnable;
.implements Lzp/cn/banny/rp/client/ReverseProxyClient;


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x10000


# instance fields
.field private aliveTimeMillis:I

.field private authListener:Lcom/zp/rp/client/AuthListener;

.field private authResult:Lcom/zp/rp/auth/AuthResult;

.field private canStop:Z

.field private checkNetworkChangeTime:J

.field private checkSessionTime:J

.field private dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

.field private final extraData:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private lastAliveTime:J

.field private lastCode:I

.field private lastSync:J

.field private networkDelay:I

.field private final packetBuffer:Ljava/nio/ByteBuffer;

.field private password:Ljava/lang/String;

.field private final port:I

.field private final readBuffer:Ljava/nio/ByteBuffer;

.field private reconnect:Z

.field private requestedLogin:Z

.field private selector:Ljava/nio/channels/Selector;

.field private session:Ljava/nio/channels/SocketChannel;

.field private final socketMap:Landroid/util/SparseArray;

.field private username:Ljava/lang/String;

.field final writeBuffer:Ljava/nio/ByteBuffer;

.field private zipDeviceData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/high16 v2, 0x10000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->host:Ljava/lang/String;

    iput p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->port:I

    iput-object p3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private canConnectReverseProxyServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->isAuthOK()Z

    move-result v0

    goto :goto_0
.end method

.method private checkNetworkChange(J)V
    .locals 5

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChangeTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChangeTime:J

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    if-ne v1, v0, :cond_5

    :cond_4
    iput v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->getProxies()[Lcom/zp/rp/client/SocketProxy;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/zp/rp/client/SocketProxy;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :try_start_3
    iput v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    throw v0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private checkSelectionKeys(Ljava/util/Iterator;)V
    .locals 5

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zp/rp/client/SocketSession;

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->processRead(Ljava/nio/channels/SocketChannel;Lcom/zp/rp/client/SocketSession;Ljava/nio/channels/SelectionKey;)V

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Lcom/zp/rp/client/SocketSession;->processConnect(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    invoke-interface {v2, v1, v3}, Lcom/zp/rp/client/SocketSession;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Lcom/zp/rp/client/SocketSession;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    :catch_1
    move-exception v3

    sget-boolean v4, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    invoke-interface {v2, v1}, Lcom/zp/rp/client/SocketSession;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkSession(Ljava/nio/channels/SocketChannel;J)V
    .locals 4

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iget v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->logout()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0
.end method

.method private closeSession(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-static {p1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    invoke-virtual {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method private connectReverseProxyServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->host:Ljava/lang/String;

    iget v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->port:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sessionOpened(Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-static {v1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_1
    invoke-static {v2}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private getProxies()[Lcom/zp/rp/client/SocketProxy;
    .locals 4

    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [Lcom/zp/rp/client/SocketProxy;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zp/rp/client/SocketProxy;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseConnect(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseWriteData(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_3
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseClose(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_4
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    invoke-static {p2}, Lcom/zp/rp/auth/AuthResult;->readAuthResult(Ljava/nio/ByteBuffer;)Lcom/zp/rp/auth/AuthResult;

    move-result-object v1

    iput-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-interface {v0, p0, v1}, Lcom/zp/rp/client/AuthListener;->onAuthResponse(Lzp/cn/banny/rp/client/ReverseProxyClient;Lcom/zp/rp/auth/AuthResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    goto :goto_0

    :pswitch_6
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

    invoke-interface {v1, v0, p0}, Lcom/zp/rp/handler/ExtDataHandler;->handle([BLcom/zp/rp/MessageDeliver;)V

    goto :goto_0

    :pswitch_7
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    goto :goto_0

    :pswitch_8
    iput-wide v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parseClose(ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zp/rp/client/SocketProxy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/zp/rp/client/SocketProxy;->close()V

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private parseConnect(ILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zp/rp/client/SocketProxy;

    invoke-static {p2}, Lcom/zp/rp/RequestConnect;->parseRequestConnect(Ljava/nio/ByteBuffer;)Lcom/zp/rp/RequestConnect;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/zp/rp/client/SocketProxy;-><init>(ILcom/zp/rp/RequestConnect;Lcom/zp/rp/client/DefaultReverseProxyClient;Ljava/nio/channels/Selector;)V

    invoke-virtual {v0}, Lcom/zp/rp/client/SocketProxy;->connect()V

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendException(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parseRequestForward(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private parseWriteData(ILjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zp/rp/client/SocketProxy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zp/rp/client/SocketProxy;->writeData(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private processRead(Ljava/nio/channels/SocketChannel;Lcom/zp/rp/client/SocketSession;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1, v0}, Lcom/zp/rp/client/SocketSession;->pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private receivedPacket(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 2

    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const-string v1, "receivedPacket"

    invoke-static {v0, v1}, Lcom/zp/rp/ReverseProxy;->inspect([BLjava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private requestAuth()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const v3, 0x20033

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->zipDeviceData:[B

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private requestChangeIp(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method private sessionIdle(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method


# virtual methods
.method public deliverMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-static {v0}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Selector;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    :cond_1
    return-void
.end method

.method public exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public getAuthUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkDelay()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    const v0, 0x20033

    return v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->initialize([B)V

    return-void
.end method

.method public initialize([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->zipDeviceData:[B

    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthOK()Z
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-virtual {v0}, Lcom/zp/rp/auth/AuthResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->canConnectReverseProxyServer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    iput p3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    return-void
.end method

.method public logout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    :cond_0
    return-void
.end method

.method notifySessionClosed(ILjava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processConnect(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "processConnect"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->receivedPacket(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw v0
.end method

.method public run()V
    .locals 8

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    if-nez v0, :cond_6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChange(J)V

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->canConnectReverseProxyServer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->connectReverseProxyServer()V

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSelectionKeys(Ljava/util/Iterator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSession(Ljava/nio/channels/SocketChannel;J)V

    iget-wide v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const-wide/16 v0, 0x3e8

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    return-void
.end method

.method sendException(ILjava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method sendResponse(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const-string v1, "encode"

    invoke-static {v0, v1}, Lcom/zp/rp/ReverseProxy;->inspect([BLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public sessionClosed(Ljava/nio/channels/SocketChannel;)V
    .locals 4

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-static {p1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->getProxies()[Lcom/zp/rp/client/SocketProxy;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/zp/rp/client/SocketProxy;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-interface {v0, p0, v1}, Lcom/zp/rp/client/AuthListener;->onDisconnect(Lzp/cn/banny/rp/client/ReverseProxyClient;Lcom/zp/rp/auth/AuthResult;)V

    :cond_2
    return-void
.end method

.method public sessionOpened(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestAuth()V

    :cond_0
    return-void
.end method
