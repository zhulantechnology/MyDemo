.class final La/a/co;
.super Lcom/b/a/l;


# instance fields
.field final synthetic a:La/a/cu;

.field final synthetic b:La/a/cn;


# direct methods
.method constructor <init>(La/a/cn;La/a/cu;)V
    .locals 0

    iput-object p1, p0, La/a/co;->b:La/a/cn;

    iput-object p2, p0, La/a/co;->a:La/a/cu;

    invoke-direct {p0}, Lcom/b/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, La/a/co;->b:La/a/cn;

    invoke-static {v0}, La/a/cn;->a(La/a/cn;)La/a/ct;

    move-result-object v0

    iget-object v1, p0, La/a/co;->a:La/a/cu;

    invoke-interface {v0, v1}, La/a/ct;->a(La/a/cu;)V

    return-void
.end method
