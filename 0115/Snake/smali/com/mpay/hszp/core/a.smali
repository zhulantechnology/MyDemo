.class final Lcom/mpay/hszp/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mpay/hszp/core/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mpay/hszp/core/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mpay/hszp/core/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mm/hszp/log/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mm/hszp/log/risk/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    iget-object v0, p0, Lcom/mpay/hszp/core/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mpay/hszp/core/b;->a(Ljava/lang/String;)V

    return-void
.end method
