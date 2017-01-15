.class public Lcom/zp/mm/api/impl/XmlServerConnector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zp/mm/api/CodePayHandler;
.implements Lcom/zp/mm/api/ServerConnector;


# static fields
.field private static final DEFAULT_RP_PORT:I = 0x22b8

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final VERSION:I = 0x1


# instance fields
.field private final appStart:Ljava/lang/String;

.field private customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

.field private factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

.field private final gate:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

.field private zipDeviceData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https?://(\\d+\\.\\d+\\.\\d+\\.\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zp/mm/api/impl/XmlServerConnector;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/appStart.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->appStart:Ljava/lang/String;

    sget-object v0, Lcom/zp/mm/api/impl/XmlServerConnector;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkFactory(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zp/rp/client/LocalReverseProxyClientFactory;

    invoke-direct {v0, p1}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    :cond_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/16 v0, 0x22b8

    if-eqz p4, :cond_1

    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p3}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0, p5}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/zp/mm/api/impl/XmlServerConnector;->createDefaultClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private checkFactory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "rp.jar"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x2

    :try_start_1
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_5

    :goto_2
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v1, v4, v2, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v1, "cn.banny.rp.client.DefaultReverseProxyClientFactory"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    const/4 v0, 0x1

    :try_start_6
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v2, :cond_2

    check-cast v0, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_5
    :try_start_9
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_4
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_0

    :cond_5
    :try_start_a
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v1, :cond_6

    check-cast v0, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_6
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    :cond_7
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6
.end method

.method private createDefaultClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    :cond_1
    new-instance v0, Lcom/zp/rp/client/LocalReverseProxyClientFactory;

    invoke-direct {v0, p1}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x22b8

    if-eqz p3, :cond_2

    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p2}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0, p4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private mayCustom(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isDead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    :cond_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v0, :cond_1

    const-string v0, "host"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "port"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const-string v0, "username"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "password"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_3

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1, p2}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0, p5}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0, p3, p4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    move-object p3, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object p4, v0

    goto :goto_2
.end method

.method private static parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v4, "http"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    new-instance v5, Lcom/zp/mm/api/http/HttpCommand;

    const-string v6, "url"

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zp/mm/api/http/HttpCommand;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "data"

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zp/mm/api/http/HttpCommand;->setData([B)V

    :cond_0
    const-string v6, "delay"

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/zp/mm/api/http/HttpCommand;->setDelay(I)V

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "header"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/zp/mm/api/http/HttpCommand;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    new-array v0, v1, [Lcom/zp/mm/api/http/HttpCommand;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zp/mm/api/http/HttpCommand;

    return-object v0
.end method

.method private startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imsi"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/service/startRp.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    invoke-static {v3, v2, v4}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v2

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startRp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startRp xml="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v0, "code"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/zp/mm/api/MMApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startRp failed: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "msg"

    invoke-interface {v7, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_3
    const-string v0, "factory"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v0, "service"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_3

    const-string v0, "rp"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cont"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x927c0

    invoke-interface {v0, p3, v1, v2}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;
    :try_end_4
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v6}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_4
    :try_start_6
    new-instance v2, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v2, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method private static zip([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/zp/mm/api/Command;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/16 v1, 0x3f

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x26

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->appStart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    const-string v3, "?appKey="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v3, :cond_6

    move v3, v2

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "channelId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-static {p3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "version=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v2, v3}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v1

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appStart systemInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appStart xml="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v8

    :try_start_2
    const-string v0, "rp"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "factory"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "service"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_4

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p2, :cond_7

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    :goto_1
    :try_start_3
    invoke-interface {v1, p4, v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-nez p2, :cond_9

    move-object v5, p5

    :goto_3
    iget-object v6, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object v1, p0

    move-object v2, v8

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/zp/mm/api/impl/XmlServerConnector;->mayCustom(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_5
    :goto_4
    :try_start_4
    const-string v0, "code"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/zp/mm/api/MMApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appStart failed: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "msg"

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_5
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    :goto_6
    invoke-static {v7}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move v3, v1

    goto/16 :goto_0

    :cond_7
    move-object v0, p2

    goto :goto_1

    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->logout()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_7
    :try_start_8
    new-instance v1, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_9
    move-object v5, p2

    goto :goto_3

    :cond_a
    :try_start_9
    new-instance v0, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V
    :try_end_9
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v7}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method public varargs createCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePayCommand;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/zp/mm/api/impl/XmlServerConnector;->startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v4, Lcom/zp/mm/api/MMApiException;

    const-string v5, "startReverseProxyClient failed: null"

    invoke-direct {v4, v5}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    const/16 v7, 0x1e

    if-ge v4, v7, :cond_1

    invoke-interface {v6}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v4

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/zp/mm/api/MMApiException;

    const-string v5, "startReverseProxyClient failed: auth failed."

    invoke-direct {v4, v5}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v5, 0x0

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "code"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    move-object/from16 v0, p2

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imsi"

    move-object/from16 v0, p3

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    if-eqz p7, :cond_3

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "channelId"

    move-object/from16 v0, p7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v5, 0x0

    if-eqz p8, :cond_4

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "data"

    move-object/from16 v0, p8

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "version"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "device"

    invoke-virtual/range {p9 .. p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/service/createCodePay/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".do"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/http/NameValuePair;

    invoke-static {v7, v6, v8}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v6

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v7

    const/4 v5, 0x0

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createCodePay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "createCodePay xml="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v18

    const-string v5, "session"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createCodePay session="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v5, Lcom/zp/mm/api/impl/DefaultCodePayCommand;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v16, p0

    move-object/from16 v17, p10

    invoke-direct/range {v5 .. v18}, Lcom/zp/mm/api/impl/DefaultCodePayCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zp/mm/api/CodePayHandler;[Lorg/apache/http/NameValuePair;[Lcom/zp/mm/api/Command;)V

    invoke-interface {v5}, Lcom/zp/mm/api/CodePayCommand;->executeCommand()V

    const-string v6, "code"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v5, Lcom/zp/mm/api/MMApiException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "createCodePay failed: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v5, v19

    :goto_2
    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    :catch_2
    move-exception v4

    move-object/from16 v5, v19

    :goto_3
    :try_start_4
    new-instance v6, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v6, v4}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object/from16 v5, v19

    goto :goto_2

    :catch_3
    move-exception v4

    const/16 v19, 0x0

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_3
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSCommand;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "code"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imei"

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imsi"

    move-object/from16 v0, p3

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "os"

    move-object/from16 v0, p9

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    move-object/from16 v0, p10

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "channelId"

    move-object/from16 v0, p7

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p8, :cond_1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "data"

    move-object/from16 v0, p8

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/service/getSms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".do"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-static {v4, v3, v5}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v3

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSms "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSms xml="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v2, "code"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/zp/mm/api/MMApiException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSms failed: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "msg"

    invoke-interface {v10, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v9

    :goto_0
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_3
    :try_start_3
    const-string v2, "msg"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-gtz v3, :cond_4

    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "getSms failed"

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    new-instance v3, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v3, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    move-object v2, v9

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-static {v3}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v8

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "sp"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "port"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    :cond_5
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getSms sp="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", content="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isData="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dataPort="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    const/4 v7, 0x1

    const-string v12, "mustSend"

    invoke-interface {v2, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v7

    :cond_7
    :goto_3
    :try_start_7
    new-instance v2, Lcom/zp/mm/api/impl/DefaultSMSCommand;

    invoke-direct/range {v2 .. v8}, Lcom/zp/mm/api/impl/DefaultSMSCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ZSZ[Lcom/zp/mm/api/Command;)V

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_a

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v6, "success"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual {v2, v6}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->setSuccessCommand(Lcom/zp/mm/api/Command;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const-string v6, "failed"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual {v2, v6}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->setFailedCommand(Lcom/zp/mm/api/Command;)V
    :try_end_7
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :cond_a
    :try_start_8
    const-string v3, "factory"

    invoke-interface {v10, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v3, "service"

    invoke-interface {v10, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v3, :cond_b

    const-string v3, "rp"

    invoke-interface {v10, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v3}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xea60

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v4, v5}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_b
    :goto_6
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catch_2
    move-exception v3

    :try_start_9
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catchall_2
    move-exception v3

    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v2

    const/4 v9, 0x0

    goto/16 :goto_2

    :catch_4
    move-exception v3

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto/16 :goto_3
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public varargs requestCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    invoke-direct {p0, p1, p4, p3}, Lcom/zp/mm/api/impl/XmlServerConnector;->startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "startReverseProxyClient failed: null"

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_1

    invoke-interface {v4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "startReverseProxyClient failed: auth failed."

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imsi"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz p7, :cond_3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "channelId"

    move-object/from16 v0, p7

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x0

    if-eqz p8, :cond_4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "data"

    move-object/from16 v0, p8

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device"

    invoke-virtual/range {p9 .. p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "verify_code"

    move-object/from16 v0, p10

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz p11, :cond_5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "session"

    move-object/from16 v0, p11

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/service/requestCodePay/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".do"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/http/NameValuePair;

    invoke-static {v5, v4, v6}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v5

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestCodePay "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "requestCodePay xml="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v4, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual {v4}, Lcom/zp/mm/api/impl/MultiCommand;->executeCommand()V

    const-string v4, "code"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/zp/mm/api/MMApiException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestCodePay failed: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "msg"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    :goto_2
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    return v2

    :catch_2
    move-exception v2

    :goto_3
    :try_start_5
    new-instance v4, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v4, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception v2

    const/4 v3, 0x0

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method
