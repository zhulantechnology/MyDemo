.class public final Lcom/b/a/a/a;
.super Lcom/b/a/b;


# static fields
.field private static final a:Lcom/b/a/a/d;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/d;-><init>()V

    sput-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    return-void
.end method

.method public static a(DD)V
    .locals 4

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-ltz v0, :cond_0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/b/a/a/d;->a(DD)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0, p0}, Lcom/b/a/a/d;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    return-void
.end method
