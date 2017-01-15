.class public final Lcom/b/a/c$g;
.super Lcom/b/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
