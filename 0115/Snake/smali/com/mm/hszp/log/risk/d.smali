.class public final Lcom/mm/hszp/log/risk/d;
.super Ljava/lang/Object;


# static fields
.field static a:Ldalvik/system/DexClassLoader;

.field static b:Ljava/lang/Object;

.field static c:Ljava/lang/Class;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mm/hszp/log/risk/b;->a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    sput-object v0, Lcom/mm/hszp/log/risk/d;->a:Ldalvik/system/DexClassLoader;

    invoke-static/range {p1 .. p8}, Lcom/mm/hszp/log/risk/InfoUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mm/hszp/log/risk/d;->a:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/mm/hszp/log/risk/d;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.bangcle.everisk.shell.RiskStubShell"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/mm/hszp/log/risk/d;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mm/hszp/log/risk/d;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mm/hszp/log/risk/d;->c:Ljava/lang/Class;

    const-string v2, "InitIAPSDK"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/mm/hszp/log/risk/d;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mm/hszp/log/risk/d;->c:Ljava/lang/Class;

    const-string v2, "InitIAPSDKFee"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/mm/hszp/log/risk/d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mm/hszp/log/risk/c;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/mm/hszp/log/risk/d;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mm/hszp/log/risk/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    :try_start_0
    sget-object v1, Lcom/mm/hszp/log/risk/d;->c:Ljava/lang/Class;

    const-string v2, "SetKeyIAPSDK"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/mm/hszp/log/risk/d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mm/hszp/log/risk/c;->a()V

    goto :goto_0
.end method
