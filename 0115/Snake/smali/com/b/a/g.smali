.class public final Lcom/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements La/a/cz;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/b/a/f;

.field private c:La/a/cr;

.field private d:La/a/e;

.field private e:La/a/dd;

.field private f:La/a/cs;

.field private g:La/a/cn;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    new-instance v0, La/a/cr;

    invoke-direct {v0}, La/a/cr;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->c:La/a/cr;

    new-instance v0, La/a/e;

    invoke-direct {v0}, La/a/e;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    new-instance v0, La/a/dd;

    invoke-direct {v0}, La/a/dd;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->e:La/a/dd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/g;->h:Z

    iget-object v0, p0, Lcom/b/a/g;->c:La/a/cr;

    invoke-virtual {v0, p0}, La/a/cr;->a(La/a/cz;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/g;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g;->e:La/a/dd;

    invoke-static {p1}, La/a/dd;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/f;

    invoke-interface {v0}, Lcom/b/a/f;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/b/a/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/g;->e(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/g;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    new-instance v0, La/a/cs;

    iget-object v1, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/a/cs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/g;->f:La/a/cs;

    iget-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, La/a/cn;->a(Landroid/content/Context;)La/a/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g;->g:La/a/cn;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/g;->h:Z

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g;->e:La/a/dd;

    invoke-static {p1}, La/a/dd;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    invoke-virtual {v0, p1}, La/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/f;

    invoke-interface {v0}, Lcom/b/a/f;->b()V

    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->g:La/a/cn;

    invoke-virtual {v0}, La/a/cn;->b()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/b/a/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/e;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p0, p1}, Lcom/b/a/h;-><init>(Lcom/b/a/g;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/b/a/k;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->f:La/a/cs;

    invoke-virtual {v0, p2, p3}, La/a/cs;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/g;->b:Lcom/b/a/f;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    invoke-virtual {v0}, La/a/e;->a()V

    iget-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->g:La/a/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->g:La/a/cn;

    new-instance v1, La/a/f;

    invoke-direct {v1, p1}, La/a/f;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, La/a/cn;->b(La/a/cu;)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/b/a/g;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/b/a/g;->a:Landroid/content/Context;

    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {}, Lcom/b/a/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final b(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/b/a/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/e;->b(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0, p1}, Lcom/b/a/i;-><init>(Lcom/b/a/g;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/b/a/k;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final c(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/b/a/g;->d:La/a/e;

    invoke-virtual {v0}, La/a/e;->a()V

    invoke-direct {p0, p1}, Lcom/b/a/g;->e(Landroid/content/Context;)V

    const-string v0, "umeng_general_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/b/a/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
