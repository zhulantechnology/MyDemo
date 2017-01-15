.class public Lorg/zzf/core/c/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lorg/apache/http/HttpResponse;

.field private j:Lorg/zzf/core/d/p;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/zzf/core/c/l;->a:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/l;->b:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/l;->f:Z

    iput-object v0, p0, Lorg/zzf/core/c/l;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->i:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lorg/zzf/core/c/l;->k:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->l:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->n:Ljava/lang/String;

    iput-object p1, p0, Lorg/zzf/core/c/l;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&contentid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/c/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zzf/core/c/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mpay/hszp/core/BilAPI;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "port"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v1

    const/16 v2, 0x3fa

    invoke-virtual {v1, p1, v2}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resultCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "smstype"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    const-string v3, "cmd"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "port"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "init_sms"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "init_sms_number"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "package_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "version_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "version_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "app_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pay_code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/zzf/core/c/l;->n:Ljava/lang/String;

    const-string v7, "version_type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "channel_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "program_id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "timestamp"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "esm"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "mdh"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "pkm"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "sda"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "app_md5"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "channel"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "ext"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v5, p0, Lorg/zzf/core/c/l;->o:Ljava/lang/String;

    iput-object v7, p0, Lorg/zzf/core/c/l;->p:Ljava/lang/String;

    const-string v5, "0000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    new-instance v5, Lorg/zzf/core/zdx/a;

    invoke-direct {v5}, Lorg/zzf/core/zdx/a;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/zzf/core/c/l;->n:Ljava/lang/String;

    invoke-static {p1, v6, v3, v1, v7}, Lcom/mpay/hszp/core/BilAPI;->preSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5, p1, v3, v4, v1}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    :cond_2
    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v1

    const/16 v2, 0x3fa

    invoke-virtual {v1, p1, v2}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    :cond_3
    iget-object v1, p0, Lorg/zzf/core/c/l;->l:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/c/l;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lorg/zzf/core/c/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/c/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lorg/zzf/core/d/q;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/c/l;->b(Lorg/zzf/core/d/q;)V

    invoke-static {}, Lorg/zzf/core/b/e;->a()Lorg/zzf/core/b/e;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/l;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/zzf/core/b/e;->a(Landroid/content/Context;Lorg/zzf/core/d/q;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/c/m;

    invoke-direct {v1, p0, p1}, Lorg/zzf/core/c/m;-><init>(Lorg/zzf/core/c/l;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lorg/zzf/core/d/q;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/p;

    iput-object v0, p0, Lorg/zzf/core/c/l;->j:Lorg/zzf/core/d/p;

    iget-object v0, p0, Lorg/zzf/core/c/l;->j:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/l;->j:Lorg/zzf/core/d/p;

    invoke-virtual {v0}, Lorg/zzf/core/d/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    const-string v4, "MMNotice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/l;->d:Landroid/content/Context;

    iget-object v1, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/c/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    const-string v4, "MMMonitor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/l;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/l;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/q;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/zzf/core/c/l;->d:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/zzf/core/c/l;->a(Lorg/zzf/core/d/q;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/l;->d:Landroid/content/Context;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
