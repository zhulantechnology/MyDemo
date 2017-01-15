.class public Lcom/zp/rp/auth/AuthResult;
.super Ljava/lang/Object;


# instance fields
.field private final expire:Ljava/lang/Long;

.field private final msg:Ljava/lang/String;

.field private final nick:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zp/rp/auth/AuthResult;->status:I

    iput-object p2, p0, Lcom/zp/rp/auth/AuthResult;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/zp/rp/auth/AuthResult;->expire:Ljava/lang/Long;

    iput-object p4, p0, Lcom/zp/rp/auth/AuthResult;->nick:Ljava/lang/String;

    return-void
.end method

.method public static authFailed(ILjava/lang/String;)Lcom/zp/rp/auth/AuthResult;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/zp/rp/auth/AuthResult;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static authOk(Ljava/lang/Long;Ljava/lang/String;)Lcom/zp/rp/auth/AuthResult;
    .locals 3

    new-instance v0, Lcom/zp/rp/auth/AuthResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readAuthResult(Ljava/nio/ByteBuffer;)Lcom/zp/rp/auth/AuthResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Lcom/zp/rp/auth/AuthResult;

    invoke-direct {v4, v3, v0, v2, v1}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v4

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public getExpire()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->expire:Ljava/lang/Long;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/zp/rp/auth/AuthResult;->status:I

    return v0
.end method
