.class public final Lcom/mpay/hszp/core/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/mpay/hszp/core/b;

.field private static h:Z

.field private static j:I

.field private static k:Ljava/util/HashSet;

.field private static l:Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/content/Context;

.field private d:Lcom/mpay/hszp/a/b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mpay/hszp/core/b;->h:Z

    const/16 v0, -0x64

    sput v0, Lcom/mpay/hszp/core/b;->j:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mpay/hszp/core/b;->k:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mpay/hszp/core/b;->l:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mpay/hszp/core/b;->e:Z

    iput-boolean v0, p0, Lcom/mpay/hszp/core/b;->f:Z

    iput-boolean v0, p0, Lcom/mpay/hszp/core/b;->g:Z

    new-instance v0, Lcom/mpay/hszp/core/c;

    invoke-direct {v0, p0}, Lcom/mpay/hszp/core/c;-><init>(Lcom/mpay/hszp/core/b;)V

    iput-object v0, p0, Lcom/mpay/hszp/core/b;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/mpay/hszp/core/b;
    .locals 1

    sget-object v0, Lcom/mpay/hszp/core/b;->c:Lcom/mpay/hszp/core/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mpay/hszp/core/b;

    invoke-direct {v0}, Lcom/mpay/hszp/core/b;-><init>()V

    sput-object v0, Lcom/mpay/hszp/core/b;->c:Lcom/mpay/hszp/core/b;

    :cond_0
    sget-object v0, Lcom/mpay/hszp/core/b;->c:Lcom/mpay/hszp/core/b;

    return-object v0
.end method

.method static synthetic a(Lcom/mpay/hszp/core/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/mpay/hszp/core/b;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/mpay/hszp/core/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/mpay/hszp/core/b;->k:Ljava/util/HashSet;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mpay/hszp/a/b;

    invoke-static {v0, v1}, Lcom/mpay/hszp/core/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpay/hszp/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "{\"code\":-99,\"msg\":\"init xml is invalid\"}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->h()Ljava/lang/String;

    move-result-object v9

    const-string v2, "p"

    invoke-static {p0, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3.1.10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->s()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/mm/hszp/log/risk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p0, v0, v9}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    const-string v0, "l"

    invoke-static {p0, v0}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0000"

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "l"

    const-string v2, "%04d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/mpay/hszp/core/Utils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mpay/hszp/core/b;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53d1\u9001\u521d\u59cb\u5316\u77ed\u4fe1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/mm/hszp/cert/a;

    invoke-direct {v0, p0, p1}, Lcom/mm/hszp/cert/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mm/hszp/cert/a;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mpay/hszp/core/b;->h:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 23

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mpay/hszp/core/b;->e:Z

    const/4 v3, 0x0

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    :try_start_0
    const-string v3, "o"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move/from16 v18, v3

    :goto_0
    :try_start_1
    const-string v3, "utf-8"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-class v3, Lcom/mpay/hszp/a/b;

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/mpay/hszp/core/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mpay/hszp/a/b;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v3, Lcom/mpay/hszp/core/b;->j:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->h()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->e()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->f()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->g()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->i()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->k()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->l()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->m()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->n()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->o()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->j()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mpay/hszp/a/b;->t()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    aput-object v5, v21, v22

    const/16 v22, 0x3

    aput-object v7, v21, v22

    const/16 v22, 0x4

    aput-object v8, v21, v22

    const/16 v22, 0x5

    aput-object v9, v21, v22

    const/16 v22, 0x6

    aput-object v11, v21, v22

    const/16 v22, 0x7

    aput-object v13, v21, v22

    const/16 v22, 0x8

    aput-object v14, v21, v22

    const/16 v22, 0x9

    aput-object v15, v21, v22

    const/16 v22, 0xa

    aput-object v16, v21, v22

    const/16 v22, 0xb

    aput-object v17, v21, v22

    const/16 v22, 0xc

    aput-object v12, v21, v22

    const/16 v22, 0xd

    aput-object v3, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/mpay/hszp/core/Utils;->isEmpty([Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    const/16 v21, 0x1

    sput v21, Lcom/mpay/hszp/core/b;->j:I

    const-string v21, "k"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "j"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v21, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/mm/hszp/log/f;->a(Landroid/content/Context;)V

    const-string v19, "j"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v19, 0x2

    sput v19, Lcom/mpay/hszp/core/b;->j:I

    new-instance v19, Lcom/mm/hszp/paycode/b;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mm/hszp/paycode/b;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    const/16 v22, 0x1

    aput-object v12, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mm/hszp/paycode/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v19, 0x3

    sput v19, Lcom/mpay/hszp/core/b;->j:I

    const-string v19, "q"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x2

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mpay/hszp/core/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v17}, Lcom/mm/hszp/log/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    const-string v3, "o"

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v18, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    move/from16 v18, v3

    goto/16 :goto_0

    :catch_1
    move-exception v3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "{\"code\":-99,\"msg\":\"init xml is empty\"}"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, -0x1

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    goto :goto_1

    :cond_2
    const/16 v3, -0x65

    sput v3, Lcom/mpay/hszp/core/b;->j:I

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/mpay/hszp/a/b;

    invoke-static {v1, v0}, Lcom/mpay/hszp/core/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpay/hszp/a/b;

    iput-object v0, p0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v0}, Lcom/mpay/hszp/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "j"

    invoke-static {p1, v2}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v3}, Lcom/mpay/hszp/a/b;->t()I

    move-result v3

    iget-object v4, p0, Lcom/mpay/hszp/core/b;->d:Lcom/mpay/hszp/a/b;

    invoke-virtual {v4}, Lcom/mpay/hszp/a/b;->a()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/mpay/hszp/core/b;->j:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/mpay/hszp/core/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    invoke-static {p1, v4}, Lcom/mpay/hszp/core/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "{\"code\":-99,\"msg\":\"init xml is invalid\"}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/mpay/hszp/core/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mpay/hszp/core/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/mpay/hszp/core/b;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mpay/hszp/core/b;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
