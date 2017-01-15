.class public final Lcom/b/a/c$b;
.super Lcom/b/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:La/a/k;

.field private b:La/a/b;


# direct methods
.method public constructor <init>(La/a/b;La/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/c$h;-><init>()V

    iput-object p1, p0, Lcom/b/a/c$b;->b:La/a/b;

    iput-object p2, p0, Lcom/b/a/c$b;->a:La/a/k;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c$b;->a:La/a/k;

    invoke-virtual {v0}, La/a/k;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/c$b;->a:La/a/k;

    invoke-virtual {v2}, La/a/k;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/b/a/c$b;->b:La/a/b;

    iget-wide v4, v4, La/a/b;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
