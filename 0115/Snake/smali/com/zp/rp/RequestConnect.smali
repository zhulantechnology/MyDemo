.class public Lcom/zp/rp/RequestConnect;
.super Ljava/lang/Object;


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final host:Ljava/lang/String;

.field private final keepAlive:Z

.field private final oobInline:Z

.field private final port:I

.field private final receiveBufferSize:I

.field private final reuseAddress:Z

.field private final sendBufferSize:I

.field private final tcpNoDelay:Z

.field private final timeout:I

.field private final trafficClass:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZZIZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zp/rp/RequestConnect;->host:Ljava/lang/String;

    iput p2, p0, Lcom/zp/rp/RequestConnect;->port:I

    iput p3, p0, Lcom/zp/rp/RequestConnect;->timeout:I

    iput-boolean p4, p0, Lcom/zp/rp/RequestConnect;->keepAlive:Z

    iput-boolean p5, p0, Lcom/zp/rp/RequestConnect;->oobInline:Z

    iput p6, p0, Lcom/zp/rp/RequestConnect;->receiveBufferSize:I

    iput-boolean p7, p0, Lcom/zp/rp/RequestConnect;->reuseAddress:Z

    iput p8, p0, Lcom/zp/rp/RequestConnect;->sendBufferSize:I

    iput-boolean p9, p0, Lcom/zp/rp/RequestConnect;->tcpNoDelay:Z

    iput p10, p0, Lcom/zp/rp/RequestConnect;->trafficClass:I

    return-void
.end method

.method public static parseRequestConnect(Ljava/nio/ByteBuffer;)Lcom/zp/rp/RequestConnect;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v0, :cond_2

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v0, :cond_3

    move v5, v0

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-ne v7, v0, :cond_4

    move v7, v0

    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-ne v10, v0, :cond_0

    move v9, v0

    :cond_0
    new-instance v0, Lcom/zp/rp/RequestConnect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct/range {v0 .. v10}, Lcom/zp/rp/RequestConnect;-><init>(Ljava/lang/String;IIZZIZIZI)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    :cond_1
    return-object v0

    :cond_2
    move v4, v9

    goto :goto_0

    :cond_3
    move v5, v9

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_2
.end method


# virtual methods
.method public createInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget-object v0, p0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    iget v2, p0, Lcom/zp/rp/RequestConnect;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/zp/rp/RequestConnect;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zp/rp/RequestConnect;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/RequestConnect;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/RequestConnect;->sendBufferSize:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/RequestConnect;->timeout:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/RequestConnect;->trafficClass:I

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->keepAlive:Z

    return v0
.end method

.method public isOobInline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->oobInline:Z

    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->reuseAddress:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->tcpNoDelay:Z

    return v0
.end method
