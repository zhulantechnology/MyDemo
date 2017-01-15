.class public final La/a/f;
.super La/a/t;

# interfaces
.implements La/a/cu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/t;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/t;->a:J

    invoke-virtual {p0}, La/a/t;->b()V

    sget-object v0, La/a/u;->a:La/a/u;

    iput-object v0, p0, La/a/t;->c:La/a/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, La/a/f;-><init>()V

    invoke-static {p1}, La/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/t;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(La/a/ao;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, La/a/ao;->k()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, La/a/ao;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, La/a/ac;

    invoke-direct {v0}, La/a/ac;-><init>()V

    invoke-virtual {v0, p2}, La/a/ac;->a(Ljava/lang/String;)La/a/ac;

    invoke-virtual {p1, v0}, La/a/ao;->a(La/a/ac;)V

    :cond_1
    invoke-virtual {v0, p0}, La/a/ac;->a(La/a/t;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
