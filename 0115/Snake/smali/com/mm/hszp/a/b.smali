.class final Lcom/mm/hszp/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mm/hszp/a/a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mm/hszp/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mm/hszp/a/b;->a:Lcom/mm/hszp/a/a;

    iput-object p2, p0, Lcom/mm/hszp/a/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/mpay/hszp/core/d;

    invoke-direct {v0}, Lcom/mpay/hszp/core/d;-><init>()V

    iget-object v1, p0, Lcom/mm/hszp/a/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mpay/hszp/a/c;->a()Lcom/mpay/hszp/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mpay/hszp/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mpay/hszp/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
