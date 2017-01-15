.class public final La/a/ch;
.super La/a/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mac"

    invoke-direct {p0, v0}, La/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, La/a/ch;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, La/a/ch;->a:Landroid/content/Context;

    invoke-static {v0}, La/a/aq;->k(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
