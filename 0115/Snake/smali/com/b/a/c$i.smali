.class public final Lcom/b/a/c$i;
.super Lcom/b/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/c$h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c$i;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/b/a/c$i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c$i;->a:Landroid/content/Context;

    invoke-static {v0}, La/a/aq;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
