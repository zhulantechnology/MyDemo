.class public final La/a/x;
.super La/a/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android_id"

    invoke-direct {p0, v0}, La/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, La/a/x;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, La/a/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
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
