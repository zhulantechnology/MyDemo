.class final Lcom/b/a/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# virtual methods
.method public final a()V
    .locals 6

    iget-wide v0, p0, Lcom/b/a/a/c$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/b/a/a/c$a;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/c$a;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/a/c$a;->b:J

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/c$a;->b:J

    return-void
.end method
