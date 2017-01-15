.class public Lcom/mgame/pay/main/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mgame/pay/main/c;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ldalvik/system/DexClassLoader;

.field private final e:Ljava/lang/String;

.field private f:Lcom/mgame/pay/main/b;

.field private g:Lcom/mgame/pay/IPay;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mgame/pay/main/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgame/pay/main/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/mgame/pay/main/c;->b:Lcom/mgame/pay/main/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tongyu-pay-lib.apk"

    iput-object v0, p0, Lcom/mgame/pay/main/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    new-instance v0, Lcom/mgame/pay/main/b;

    invoke-direct {v0, p1}, Lcom/mgame/pay/main/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgame/pay/main/c;->f:Lcom/mgame/pay/main/b;

    return-void
.end method

.method static synthetic a(Lcom/mgame/pay/main/c;)Lcom/mgame/pay/main/b;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/c;->f:Lcom/mgame/pay/main/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mgame/pay/main/c;
    .locals 1

    sget-object v0, Lcom/mgame/pay/main/c;->b:Lcom/mgame/pay/main/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgame/pay/main/c;

    invoke-direct {v0, p0}, Lcom/mgame/pay/main/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgame/pay/main/c;->b:Lcom/mgame/pay/main/c;

    :cond_0
    sget-object v0, Lcom/mgame/pay/main/c;->b:Lcom/mgame/pay/main/c;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "tongyu-pay-lib.apk"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mgame/pay/main/c;->b(Ljava/io/File;)V

    return-void
.end method

.method private o()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    const-string v1, "com.mgame.pay.lib.Pay"

    invoke-virtual {v0, v1}, Lcom/mgame/pay/main/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgame/pay/IPay;

    iput-object v0, p0, Lcom/mgame/pay/main/c;->g:Lcom/mgame/pay/IPay;

    iget-object v0, p0, Lcom/mgame/pay/main/c;->g:Lcom/mgame/pay/IPay;

    iget-object v1, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mgame/pay/main/c;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgame/pay/main/c;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgame/pay/main/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mgame/pay/IPay;->reload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgame/pay/main/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/mgame/pay/main/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    const-string v2, "tongyu"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Z
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->d()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgame/pay/main/c;->d:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mgame/pay/main/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    const-string v1, "FIRST_CHANNEL"

    const-string v2, "OERRE"

    invoke-static {v0, v1, v2}, Lcom/mgame/pay/main/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgame/pay/main/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/mgame/pay/main/c;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgame/pay/main/c;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgame/pay/main/c;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x854

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mgame/pay/main/c;->b(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/mgame/pay/main/c;->a:Ljava/lang/String;

    const-string v2, "\u63d2\u4ef6\u4e0d\u5b58\u5728\uff0c\u6216assets\u7248\u672c\u66f4\u9ad8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/mgame/pay/main/c;->b(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    const-string v1, "dex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgame/pay/main/c;->a(Ljava/io/File;)V

    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    const-string v3, "dex"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/mgame/pay/main/c;->d:Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/mgame/pay/main/c;->o()V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mgame/pay/main/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_0
    sget-object v1, Lcom/mgame/pay/main/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mgame/pay/main/d;

    invoke-direct {v1, p0}, Lcom/mgame/pay/main/d;-><init>(Lcom/mgame/pay/main/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()Lcom/mgame/pay/IPay;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/c;->g:Lcom/mgame/pay/IPay;

    return-object v0
.end method

.method public d()J
    .locals 6

    const-wide/16 v4, 0x400

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mgame/pay/main/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tongyu-pay-lib.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mgame/pay/main/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tongyu-pay-lib.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "/Android/data/com.tongyu.pay/"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "plugins/"

    return-object v0
.end method

.method public j()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public k()V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/c;->i:Ljava/lang/String;

    return-object v0
.end method
