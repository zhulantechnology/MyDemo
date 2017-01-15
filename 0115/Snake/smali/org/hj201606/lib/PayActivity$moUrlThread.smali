.class public Lorg/hj201606/lib/PayActivity$moUrlThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/PayActivity$moUrlThread;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/hj201606/lib/PayActivity$moUrlThread;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________mo start______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$moUrlThread;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________mo ok______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
