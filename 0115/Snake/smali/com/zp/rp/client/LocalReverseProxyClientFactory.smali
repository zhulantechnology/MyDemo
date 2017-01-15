.class public Lcom/zp/rp/client/LocalReverseProxyClientFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lzp/cn/banny/rp/client/ReverseProxyClientFactory;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zp/rp/client/LocalReverseProxyClientFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createClient(Ljava/lang/String;I)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v0

    return-object v0
.end method

.method public createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 1

    new-instance v0, Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/zp/rp/client/DefaultReverseProxyClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
