.class public Lcom/mgame/pay/main/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mgame/pay/main/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mgame/pay/main/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgame/pay/main/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/mgame/pay/main/i;
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x0

    new-instance v3, Lcom/mgame/pay/main/i;

    invoke-direct {v3}, Lcom/mgame/pay/main/i;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verify="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgame/pay/main/n;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "send_url:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "send_data:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v4, 0x0

    array-length v6, v1

    invoke-virtual {v2, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v1, 0x190

    if-lt v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_5

    const/16 v1, 0xbb8

    :goto_2
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_3
    invoke-virtual {v3, v0}, Lcom/mgame/pay/main/i;->a(I)V

    invoke-virtual {v3, v5}, Lcom/mgame/pay/main/i;->a(Ljava/util/Properties;)V

    return-object v3

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x7d2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_6
    const-string v1, "download.error.code"

    invoke-virtual {v5, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v1

    goto :goto_2

    :catch_2
    move-exception v1

    add-int/lit16 v1, v2, 0x1388

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_6
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_7
    throw v1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method private b()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "http://pay.91mgame.com/sdkMis/sdk-update"

    invoke-direct {p0}, Lcom/mgame/pay/main/b;->d()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mgame/pay/main/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/mgame/pay/main/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/i;->b()I

    move-result v3

    const/16 v5, 0xbb8

    if-eq v3, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/mgame/pay/main/i;->a()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "download.error.code"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "2000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "download.url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/mgame/pay/main/b;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgame/pay/main/c;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    :goto_2
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v4

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v4

    :goto_5
    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_5

    :catchall_3
    move-exception v3

    goto :goto_5

    :catch_8
    move-exception v3

    goto :goto_3

    :catch_9
    move-exception v3

    goto :goto_4

    :catchall_4
    move-exception v3

    goto :goto_5
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    iget-object v1, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v1}, Lcom/mgame/pay/main/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgame/pay/main/c;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    iget-object v2, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v2}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgame/pay/main/c;->b(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "main"

    const/16 v2, 0x83f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    iget-object v3, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v3}, Lcom/mgame/pay/main/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgame/pay/main/c;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "distro"

    iget-object v2, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v2}, Lcom/mgame/pay/main/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v2}, Lcom/mgame/pay/main/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    const-string v1, "\u68c0\u67e5\u63d2\u4ef6\u66f4\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mgame/pay/main/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-direct {p0}, Lcom/mgame/pay/main/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    const-string v1, "\u4e0b\u8f7d\u63d2\u4ef6\u5931\u8d25!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    const-string v1, "\u4e0b\u8f7d\u63d2\u4ef6\u6210\u529f!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mgame/pay/main/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgame/pay/main/b;->a:Ljava/lang/String;

    const-string v1, "apk\u63d2\u4ef6\u6709\u66f4\u65b0\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->k()V

    iget-object v0, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->j()V

    iget-object v0, p0, Lcom/mgame/pay/main/b;->c:Lcom/mgame/pay/main/c;

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->a()V

    goto :goto_0
.end method
