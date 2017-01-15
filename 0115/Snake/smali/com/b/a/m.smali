.class public final Lcom/b/a/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/m$a;,
        Lcom/b/a/m$b;
    }
.end annotation


# static fields
.field private static a:Lcom/b/a/m;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static e:J

.field private static f:J


# instance fields
.field private d:Lcom/b/a/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/b/a/m;->a:Lcom/b/a/m;

    const-wide/32 v0, 0x48190800

    sput-wide v0, Lcom/b/a/m;->e:J

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/b/a/m;->f:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/m$a;

    invoke-direct {v0, p1}, Lcom/b/a/m$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/m;->d:Lcom/b/a/m$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/b/a/m;
    .locals 2

    const-class v0, Lcom/b/a/m;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/b/a/m;->a:Lcom/b/a/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0, p0}, Lcom/b/a/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/b/a/m;->a:Lcom/b/a/m;

    :cond_0
    sget-object v0, Lcom/b/a/m;->a:Lcom/b/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/b/a/m;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/b/a/m;

    monitor-exit v1

    throw v0
.end method

.method public static a([B)V
    .locals 3

    invoke-static {}, Lcom/b/a/m;->g()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p0}, La/a/au;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobclick_agent_user_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/b/a/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "au_p"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "au_u"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, [Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v0, 0x1

    aput-object v3, v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/b/a/m;->b:Landroid/content/Context;

    const-string v2, "umeng_general_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "appkey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c()[B
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/b/a/m;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v6, Lcom/b/a/m;->f:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-static {v2}, La/a/au;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-static {v2}, La/a/au;->c(Ljava/io/InputStream;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, La/a/au;->c(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, La/a/au;->c(Ljava/io/InputStream;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobclick_agent_header_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/b/a/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    sget-object v0, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-static {}, Lcom/b/a/m;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/b/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/m;->b:Landroid/content/Context;

    invoke-static {v1}, La/a/aq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b([B)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->d:Lcom/b/a/m$a;

    invoke-virtual {v0, p1}, Lcom/b/a/m$a;->a([B)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->d:Lcom/b/a/m$a;

    invoke-virtual {v0}, Lcom/b/a/m$a;->a()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/b/a/m$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/m;->d:Lcom/b/a/m$a;

    return-object v0
.end method
