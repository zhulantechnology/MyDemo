.class Lcom/zp/rp/client/SocketProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zp/rp/client/SocketSession;


# instance fields
.field private final client:Lcom/zp/rp/client/DefaultReverseProxyClient;

.field private final connect:Lcom/zp/rp/RequestConnect;

.field private exception:Ljava/lang/Throwable;

.field private final selector:Ljava/nio/channels/Selector;

.field session:Ljava/nio/channels/SocketChannel;

.field private final socket:I


# direct methods
.method public constructor <init>(ILcom/zp/rp/RequestConnect;Lcom/zp/rp/client/DefaultReverseProxyClient;Ljava/nio/channels/Selector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    iput-object p2, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    iput-object p3, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iput-object p4, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method private messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget-object v0, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-virtual {v1, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/zp/rp/client/SocketProxy;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    goto :goto_0
.end method

.method private sessionOpened(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    :cond_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    :try_start_0
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget v1, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->notifySessionClosed(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method connect()V
    .locals 5
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

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->isKeepAlive()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->getReceiveBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->getSendBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->isOobInline()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setOOBInline(Z)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->isReuseAddress()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->isTcpNoDelay()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v3}, Lcom/zp/rp/RequestConnect;->getTrafficClass()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTrafficClass(I)V

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v0}, Lcom/zp/rp/RequestConnect;->createInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    invoke-direct {p0, v2}, Lcom/zp/rp/client/SocketProxy;->sessionOpened(Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

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

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0
.end method

.method public exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iput-object p2, p0, Lcom/zp/rp/client/SocketProxy;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public getSocket()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    return v0
.end method

.method public processConnect(Ljava/nio/channels/SocketChannel;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget-object v1, v1, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v3, v2

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-virtual {v0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget v2, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v1, v2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendException(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    invoke-direct {p0, p1, p2}, Lcom/zp/rp/client/SocketProxy;->messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sessionClosed(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    goto :goto_0
.end method

.method writeData(Ljava/nio/ByteBuffer;)V
    .locals 2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v1, v0}, Lcom/zp/rp/client/SocketProxy;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    :cond_1
    return-void
.end method
