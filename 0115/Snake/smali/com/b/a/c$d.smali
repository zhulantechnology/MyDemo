.class public final Lcom/b/a/c$d;
.super Lcom/b/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 0

    return p1
.end method
