.class Lorg/zzf/core/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iput-object p2, p0, Lorg/zzf/core/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/zzf/core/l;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    iget-object v2, p0, Lorg/zzf/core/l;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    const-string v2, "resultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/zzf/core/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/l;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->e:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v1, "sdkVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "channelId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "versionName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "versionCode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "packageName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "programId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "app_md5"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "channel"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    if-ne v10, v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/zzf/core/l;->a:Landroid/content/Context;

    invoke-static/range {v0 .. v9}, Lcom/zpay/mmlog/TrustInfo;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
