.class public final La/a/bj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/bj$a;
    }
.end annotation


# static fields
.field public static a:La/a/bj;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:La/a/z;

.field private e:J

.field private f:J

.field private g:Ljava/util/Set;

.field private h:La/a/bj$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_it.cache"

    iput-object v0, p0, La/a/bj;->b:Ljava/lang/String;

    iput-object v1, p0, La/a/bj;->d:La/a/z;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/a/bj;->g:Ljava/util/Set;

    iput-object v1, p0, La/a/bj;->h:La/a/bj$a;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, La/a/bj;->c:Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, La/a/bj;->f:J

    new-instance v0, La/a/bj$a;

    invoke-direct {v0, p1}, La/a/bj$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/bj;->h:La/a/bj$a;

    iget-object v0, p0, La/a/bj;->h:La/a/bj$a;

    invoke-virtual {v0}, La/a/bj$a;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)La/a/bj;
    .locals 5

    const-class v0, La/a/bj;

    monitor-enter v0

    :try_start_0
    sget-object v0, La/a/bj;->a:La/a/bj;

    if-nez v0, :cond_3

    new-instance v0, La/a/bj;

    invoke-direct {v0, p0}, La/a/bj;-><init>(Landroid/content/Context;)V

    sput-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/cf;

    invoke-direct {v1, p0}, La/a/cf;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/ch;

    invoke-direct {v1, p0}, La/a/ch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/x;

    invoke-direct {v1, p0}, La/a/x;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/ck;

    invoke-direct {v1, p0}, La/a/ck;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/cj;

    invoke-direct {v1, p0}, La/a/cj;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v0, La/a/bj;->a:La/a/bj;

    new-instance v1, La/a/ci;

    invoke-direct {v1}, La/a/ci;-><init>()V

    invoke-direct {v0, v1}, La/a/bj;->a(La/a/a;)Z

    sget-object v1, La/a/bj;->a:La/a/bj;

    invoke-direct {v1}, La/a/bj;->f()La/a/z;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v0, v1, La/a/bj;->d:La/a/z;

    iget-object v0, v1, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a;

    iget-object v4, v1, La/a/bj;->d:La/a/z;

    invoke-virtual {v0, v4}, La/a/a;->a(La/a/z;)V

    invoke-virtual {v0}, La/a/a;->c()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, La/a/bj;

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a;

    iget-object v3, v1, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {v1}, La/a/bj;->d()V

    :cond_3
    sget-object v0, La/a/bj;->a:La/a/bj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-class v1, La/a/bj;

    monitor-exit v1

    return-object v0
.end method

.method private a(La/a/a;)Z
    .locals 2

    iget-object v0, p0, La/a/bj;->h:La/a/bj$a;

    invoke-virtual {p1}, La/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/bj$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    new-instance v1, La/a/z;

    invoke-direct {v1}, La/a/z;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a;

    invoke-virtual {v0}, La/a/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, La/a/a;->d()La/a/y;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, La/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, La/a/a;->d()La/a/y;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, La/a/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, La/a/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, La/a/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, La/a/z;->a(Ljava/util/List;)La/a/z;

    invoke-virtual {v1, v2}, La/a/z;->a(Ljava/util/Map;)La/a/z;

    monitor-enter p0

    :try_start_0
    iput-object v1, p0, La/a/bj;->d:La/a/z;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, La/a/bj;->d:La/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/bj;->d:La/a/z;

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, La/a/bc;

    invoke-direct {v1}, La/a/bc;-><init>()V

    invoke-virtual {v1, v0}, La/a/bc;->a(La/a/ax;)[B

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, La/a/bj;->c:Ljava/io/File;

    invoke-static {v1, v0}, La/a/au;->a(Ljava/io/File;[B)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f()La/a/z;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, La/a/bj;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, La/a/bj;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, La/a/au;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v0, La/a/z;

    invoke-direct {v0}, La/a/z;-><init>()V

    new-instance v4, La/a/az;

    invoke-direct {v4}, La/a/az;-><init>()V

    invoke-virtual {v4, v0, v3}, La/a/az;->a(La/a/ax;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, La/a/au;->c(Ljava/io/InputStream;)V

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, La/a/au;->c(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, La/a/au;->c(Ljava/io/InputStream;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, La/a/bj;->e:J

    sub-long v0, v2, v0

    iget-wide v4, p0, La/a/bj;->f:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a;

    invoke-virtual {v0}, La/a/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, La/a/a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0}, La/a/a;->c()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, La/a/bj;->h:La/a/bj$a;

    invoke-virtual {v0}, La/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, La/a/bj$a;->b(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, La/a/bj;->d()V

    iget-object v0, p0, La/a/bj;->h:La/a/bj$a;

    invoke-virtual {v0}, La/a/bj$a;->a()V

    invoke-direct {p0}, La/a/bj;->e()V

    :cond_3
    iput-wide v2, p0, La/a/bj;->e:J

    :cond_4
    return-void
.end method

.method public final b()La/a/z;
    .locals 1

    iget-object v0, p0, La/a/bj;->d:La/a/z;

    return-object v0
.end method

.method public final c()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, La/a/bj;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a;

    invoke-virtual {v0}, La/a/a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, La/a/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, La/a/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, La/a/a;->f()V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, La/a/bj;->d:La/a/z;

    invoke-virtual {v0, v2}, La/a/z;->a(Z)V

    invoke-direct {p0}, La/a/bj;->e()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
