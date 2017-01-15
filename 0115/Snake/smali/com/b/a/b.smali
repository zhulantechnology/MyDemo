.class public Lcom/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/b/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/g;

    invoke-direct {v0}, Lcom/b/a/g;-><init>()V

    sput-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    return-void
.end method

.method public static a()Lcom/b/a/g;
    .locals 1

    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->c(Landroid/content/Context;)V

    return-void
.end method
