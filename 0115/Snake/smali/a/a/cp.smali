.class final La/a/cp;
.super Lcom/b/a/l;


# instance fields
.field final synthetic a:La/a/cn;


# direct methods
.method constructor <init>(La/a/cn;)V
    .locals 0

    iput-object p1, p0, La/a/cp;->a:La/a/cn;

    invoke-direct {p0}, Lcom/b/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/cp;->a:La/a/cn;

    invoke-static {v0}, La/a/cn;->a(La/a/cn;)La/a/ct;

    move-result-object v0

    invoke-interface {v0}, La/a/ct;->b()V

    return-void
.end method
