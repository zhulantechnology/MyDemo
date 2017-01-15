.class final Lcom/mpay/hszp/core/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mpay/hszp/core/d;


# direct methods
.method constructor <init>(Lcom/mpay/hszp/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mpay/hszp/core/e;->a:Lcom/mpay/hszp/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/e;->a:Lcom/mpay/hszp/core/d;

    iget-object v0, v0, Lcom/mpay/hszp/core/d;->c:Lcom/mpay/hszp/core/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mpay/hszp/core/e;->a:Lcom/mpay/hszp/core/d;

    iget-object v0, v0, Lcom/mpay/hszp/core/d;->c:Lcom/mpay/hszp/core/g;

    iget-object v0, p0, Lcom/mpay/hszp/core/e;->a:Lcom/mpay/hszp/core/d;

    iget v0, v0, Lcom/mpay/hszp/core/d;->a:I

    iget-object v0, p0, Lcom/mpay/hszp/core/e;->a:Lcom/mpay/hszp/core/d;

    iget-object v0, v0, Lcom/mpay/hszp/core/d;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
