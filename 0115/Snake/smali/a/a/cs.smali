.class public final La/a/cs;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private c:La/a/cq;

.field private d:Landroid/content/Context;

.field private e:La/a/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, La/a/cs;->a:I

    const/16 v0, 0x100

    iput v0, p0, La/a/cs;->b:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, La/a/cs;->d:Landroid/content/Context;

    new-instance v0, La/a/cq;

    iget-object v1, p0, La/a/cs;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, La/a/cq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/cs;->c:La/a/cq;

    iget-object v1, p0, La/a/cs;->c:La/a/cq;

    sget-boolean v0, Lcom/b/a/a;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, La/a/cq;->a(Z)V

    iget-object v0, p0, La/a/cs;->d:Landroid/content/Context;

    invoke-static {v0}, La/a/cn;->a(Landroid/content/Context;)La/a/cn;

    move-result-object v0

    iput-object v0, p0, La/a/cs;->e:La/a/cn;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "Event id is empty or too long in tracking Event"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/cs;->e:La/a/cn;

    new-instance v1, La/a/g;

    invoke-direct {v1, p1, p2}, La/a/g;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, La/a/cn;->a(La/a/cu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
