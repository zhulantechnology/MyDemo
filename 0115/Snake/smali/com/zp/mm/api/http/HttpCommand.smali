.class public Lcom/zp/mm/api/http/HttpCommand;
.super Ljava/util/TimerTask;

# interfaces
.implements Lcom/zp/mm/api/Command;
.implements Ljava/lang/Runnable;


# instance fields
.field private data:[B

.field private delay:I

.field private final headers:Ljava/util/List;

.field private final timer:Ljava/util/Timer;

.field private tryCount:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->timer:Ljava/util/Timer;

    iput-object p1, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    return-void
.end method

.method private processHttp()V
    .locals 4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendGet url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v0}, Lcom/zp/mm/api/http/HttpUtils;->sendGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)[B

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPost url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v2, v0}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/zp/mm/api/http/HttpCommand;->tryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zp/mm/api/http/HttpCommand;->tryCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public executeCommand()V
    .locals 4

    iget v0, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->timer:Ljava/util/Timer;

    iget v1, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/zp/mm/api/http/HttpCommand;->processHttp()V

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    return-void
.end method

.method public setDelay(I)V
    .locals 0

    iput p1, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    return-void
.end method
