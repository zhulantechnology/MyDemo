.class public final Lcom/mm/hszp/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_uploadflag"

    iput-object v0, p0, Lcom/mm/hszp/a/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mm/hszp/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "key_uploadflag"

    invoke-static {p1, v0}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mpay/hszp/core/i;

    invoke-direct {v0, p1}, Lcom/mpay/hszp/core/i;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mpay/hszp/a/a;

    invoke-direct {v1}, Lcom/mpay/hszp/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->b(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->i(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->s(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->o(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/i;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->r(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->m(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mpay/hszp/a/a;->p(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mpay/hszp/core/i;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mpay/hszp/a/a;->q(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mpay/hszp/a/a;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mpay/hszp/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/mpay/hszp/a/c;->a()Lcom/mpay/hszp/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mpay/hszp/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mm/hszp/paycode/g;->b([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mm/hszp/a/b;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/mm/hszp/a/b;-><init>(Lcom/mm/hszp/a/a;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v0, "key_uploadflag"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/mm/hszp/paycode/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    check-cast v0, [B

    goto :goto_0
.end method
