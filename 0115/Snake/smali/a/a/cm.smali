.class final La/a/cm;
.super Lcom/b/a/l;


# instance fields
.field final synthetic a:La/a/cl;


# direct methods
.method constructor <init>(La/a/cl;)V
    .locals 0

    iput-object p1, p0, La/a/cm;->a:La/a/cl;

    invoke-direct {p0}, Lcom/b/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/cm;->a:La/a/cl;

    invoke-virtual {v0}, La/a/cl;->a()V

    return-void
.end method
