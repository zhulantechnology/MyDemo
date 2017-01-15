.class public final La/a/bm$a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/bs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/a/bm$a;->a:J

    return-void
.end method


# virtual methods
.method public final a(La/a/cd;)La/a/bq;
    .locals 4

    new-instance v0, La/a/bm;

    iget-wide v2, p0, La/a/bm$a;->a:J

    invoke-direct {v0, p1, v2, v3}, La/a/bm;-><init>(La/a/cd;J)V

    return-object v0
.end method
