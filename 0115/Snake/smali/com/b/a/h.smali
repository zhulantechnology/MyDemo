.class final Lcom/b/a/h;
.super Lcom/b/a/l;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/b/a/g;


# direct methods
.method constructor <init>(Lcom/b/a/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/h;->b:Lcom/b/a/g;

    iput-object p2, p0, Lcom/b/a/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/b/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/h;->b:Lcom/b/a/g;

    iget-object v1, p0, Lcom/b/a/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/g;->a(Lcom/b/a/g;Landroid/content/Context;)V

    return-void
.end method
