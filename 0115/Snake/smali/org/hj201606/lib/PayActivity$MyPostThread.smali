.class public Lorg/hj201606/lib/PayActivity$MyPostThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________post start______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->c:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v2, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->b:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->d:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "______________________________post ok______________________________"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$MyPostThread;->a:Lorg/hj201606/lib/PayActivity;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;Lorg/apache/http/HttpResponse;I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "hdn"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hdv"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
