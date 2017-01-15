.class public final La/a/cg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/cg$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static e:La/a/cg;


# instance fields
.field private b:La/a/da;

.field private c:La/a/cg$a;

.field private d:La/a/aa;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, La/a/cg;->a:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/cg$a;

    invoke-direct {v0}, La/a/cg$a;-><init>()V

    iput-object v0, p0, La/a/cg;->c:La/a/cg$a;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/cg;->d:La/a/aa;

    iput-object p1, p0, La/a/cg;->f:Landroid/content/Context;

    return-void
.end method

.method private static a(La/a/aa;La/a/aa;)La/a/aa;
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/ab;

    invoke-virtual {v1}, La/a/ab;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La/a/aa;->d()I

    move-result v0

    invoke-virtual {p0, v0}, La/a/aa;->a(I)La/a/aa;

    invoke-static {p0}, La/a/cg;->b(La/a/aa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/aa;->a(Ljava/lang/String;)La/a/aa;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)La/a/cg;
    .locals 6

    const/4 v0, 0x0

    const-class v1, La/a/cg;

    monitor-enter v1

    :try_start_0
    sget-object v1, La/a/cg;->e:La/a/cg;

    if-nez v1, :cond_0

    new-instance v3, La/a/cg;

    invoke-direct {v3, p0}, La/a/cg;-><init>(Landroid/content/Context;)V

    sput-object v3, La/a/cg;->e:La/a/cg;

    new-instance v1, Ljava/io/File;

    iget-object v2, v3, La/a/cg;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, ".imprint"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v3, La/a/cg;->f:Landroid/content/Context;

    const-string v2, ".imprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :try_start_2
    invoke-static {v1}, La/a/au;->b(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    invoke-static {v1}, La/a/au;->c(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_4
    new-instance v1, La/a/aa;

    invoke-direct {v1}, La/a/aa;-><init>()V

    new-instance v2, La/a/az;

    invoke-direct {v2}, La/a/az;-><init>()V

    invoke-virtual {v2, v1, v0}, La/a/az;->a(La/a/ax;[B)V

    iput-object v1, v3, La/a/cg;->d:La/a/aa;

    iget-object v0, v3, La/a/cg;->c:La/a/cg$a;

    invoke-virtual {v0, v1}, La/a/cg$a;->a(La/a/aa;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_1
    :try_start_5
    sget-object v0, La/a/cg;->e:La/a/cg;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-class v1, La/a/cg;

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v1}, La/a/au;->c(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    check-cast v0, [B

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, La/a/cg;

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    :try_start_8
    invoke-static {v0}, La/a/au;->c(Ljava/io/InputStream;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_3
.end method

.method private static b(La/a/aa;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p0}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/ab;

    invoke-virtual {v1}, La/a/ab;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/ab;

    invoke-virtual {v1}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/ab;

    invoke-virtual {v1}, La/a/ab;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ab;

    invoke-virtual {v0}, La/a/ab;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v0, p0, La/a/aa;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()La/a/aa;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/cg;->d:La/a/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(La/a/aa;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, La/a/aa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, La/a/cg;->b(La/a/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, La/a/cg;->d:La/a/aa;

    if-nez v1, :cond_8

    move-object v5, v4

    :goto_2
    if-nez v1, :cond_a

    invoke-virtual {p1}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/ab;

    invoke-virtual {v1}, La/a/ab;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    invoke-virtual {p1}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ab;

    invoke-virtual {v0}, La/a/ab;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, La/a/ab;->d()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    sget-object v7, La/a/cg;->a:[B

    new-array v8, v11, [B

    move v0, v2

    :goto_4
    if-ge v0, v11, :cond_5

    aget-byte v9, v6, v0

    aget-byte v10, v7, v0

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_5
    if-ge v0, v11, :cond_4

    aget-byte v6, v5, v0

    aget-byte v7, v8, v0

    if-eq v6, v7, :cond_6

    move v0, v2

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    :try_start_1
    invoke-virtual {v1}, La/a/aa;->g()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_2

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-static {v1, p1}, La/a/cg;->a(La/a/aa;La/a/aa;)La/a/aa;

    move-result-object p1

    :cond_b
    iput-object p1, p0, La/a/cg;->d:La/a/aa;

    if-nez p1, :cond_c

    move-object v0, v4

    :goto_7
    if-nez v5, :cond_d

    if-eqz v0, :cond_f

    move v0, v2

    :goto_8
    if-nez v0, :cond_e

    move v0, v3

    :goto_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, La/a/cg;->d:La/a/aa;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/cg;->c:La/a/cg$a;

    iget-object v1, p0, La/a/cg;->d:La/a/aa;

    invoke-virtual {v0, v1}, La/a/cg$a;->a(La/a/aa;)V

    iget-object v0, p0, La/a/cg;->b:La/a/da;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/cg;->b:La/a/da;

    iget-object v1, p0, La/a/cg;->c:La/a/cg$a;

    invoke-interface {v0, v1}, La/a/da;->a(La/a/cg$a;)V

    goto/16 :goto_0

    :cond_c
    :try_start_2
    invoke-virtual {p1}, La/a/aa;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_8

    :cond_e
    move v0, v2

    goto :goto_9

    :cond_f
    move v0, v3

    goto :goto_8
.end method

.method public final a(La/a/da;)V
    .locals 0

    iput-object p1, p0, La/a/cg;->b:La/a/da;

    return-void
.end method

.method public final b()La/a/cg$a;
    .locals 1

    iget-object v0, p0, La/a/cg;->c:La/a/cg$a;

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, La/a/cg;->d:La/a/aa;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, La/a/bc;

    invoke-direct {v0}, La/a/bc;-><init>()V

    iget-object v1, p0, La/a/cg;->d:La/a/aa;

    invoke-virtual {v0, v1}, La/a/bc;->a(La/a/ax;)[B

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, La/a/cg;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".imprint"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, La/a/au;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
