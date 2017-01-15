.class public Lorg/zzf/core/f/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lorg/zzf/core/f/a/a;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/zzf/core/f/a/a;

    invoke-direct {v1}, Lorg/zzf/core/f/a/a;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zzf/core/f/a/a;->d(Ljava/lang/String;)V

    const-string v2, "mobileImsi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zzf/core/f/a/a;->e(Ljava/lang/String;)V

    const-string v2, "resultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zzf/core/f/a/a;->a(Ljava/lang/String;)V

    const-string v2, "sendMobile"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zzf/core/f/a/a;->b(Ljava/lang/String;)V

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/zzf/core/f/a/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
