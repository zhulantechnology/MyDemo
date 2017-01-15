.class final Lcom/mpay/hszp/core/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mpay/hszp/core/b;


# direct methods
.method constructor <init>(Lcom/mpay/hszp/core/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/mpay/hszp/core/b;->b()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v1}, Lcom/mpay/hszp/core/b;->a(Lcom/mpay/hszp/core/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v0}, Lcom/mpay/hszp/core/b;->b(Lcom/mpay/hszp/core/b;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v0}, Lcom/mpay/hszp/core/b;->a(Lcom/mpay/hszp/core/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v0}, Lcom/mpay/hszp/core/b;->b(Lcom/mpay/hszp/core/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v1}, Lcom/mpay/hszp/core/b;->a(Lcom/mpay/hszp/core/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mm/hszp/log/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/b;

    invoke-static {v0}, Lcom/mpay/hszp/core/b;->a(Lcom/mpay/hszp/core/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mm/hszp/log/risk/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
