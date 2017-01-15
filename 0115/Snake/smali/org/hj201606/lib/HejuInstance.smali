.class public Lorg/hj201606/lib/HejuInstance;
.super Ljava/lang/Object;


# static fields
.field public static CID:I

.field public static LAC:I

.field public static MCC:I

.field public static MNC:I

.field public static activityName:Ljava/lang/String;

.field public static again:I

.field public static appName:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field public static debug:Ljava/lang/String;

.field public static extraInfo:Ljava/lang/String;

.field public static hKey:Ljava/lang/String;

.field public static huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

.field public static mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

.field public static mReceiverTag:Z

.field public static mobile:Ljava/lang/String;

.field public static payType:Ljava/lang/String;

.field public static point:Ljava/lang/String;

.field public static productName:Ljava/lang/String;

.field public static sentIntent:Lorg/hj201606/lib/sms/SentIntent;

.field public static sentNum:I

.field public static sentParamsStr:Ljava/lang/String;

.field public static srsn:I

.field public static toast:I

.field public static toastContent:Ljava/lang/String;

.field public static toastProgressDialog:Ljava/lang/String;

.field public static tradeId:Ljava/lang/String;


# instance fields
.field a:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->b:Ljava/lang/String;

    sput v1, Lorg/hj201606/lib/HejuInstance;->MCC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->MNC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->LAC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->CID:I

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    sput v1, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->toast:I

    const-string v0, ""

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->toastContent:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->toastProgressDialog:Ljava/lang/String;

    const-string v0, "sms"

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lorg/hj201606/lib/HejuInstance;->srsn:I

    const/16 v0, 0x3c

    sput v0, Lorg/hj201606/lib/HejuInstance;->again:I

    new-instance v0, Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-direct {v0}, Lorg/hj201606/lib/sms/HuafeiReceiver;-><init>()V

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    new-instance v0, Lorg/hj201606/lib/sms/SentIntent;

    invoke-direct {v0}, Lorg/hj201606/lib/sms/SentIntent;-><init>()V

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->sentIntent:Lorg/hj201606/lib/sms/SentIntent;

    sput-boolean v1, Lorg/hj201606/lib/HejuInstance;->mReceiverTag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hj201606/lib/HejuInstance;->d:Ljava/lang/String;

    new-instance v0, Lorg/hj201606/lib/b;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/b;-><init>(Lorg/hj201606/lib/HejuInstance;)V

    iput-object v0, p0, Lorg/hj201606/lib/HejuInstance;->a:Landroid/os/Handler;

    new-instance v0, Lorg/hj201606/lib/c;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/c;-><init>(Lorg/hj201606/lib/HejuInstance;)V

    iput-object v0, p0, Lorg/hj201606/lib/HejuInstance;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "sentParams"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v1, "sentNum"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    const-string v1, "toast"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lorg/hj201606/lib/HejuInstance;->toast:I

    const-string v1, "toastContent"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/hj201606/lib/HejuInstance;->toastContent:Ljava/lang/String;

    const-string v1, "tpd"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/hj201606/lib/HejuInstance;->toastProgressDialog:Ljava/lang/String;

    const-string v1, "paytype"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "srsn"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/hj201606/lib/HejuInstance;->srsn:I

    const-string v1, "again"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/hj201606/lib/HejuInstance;->again:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "heju"

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "heju"

    goto :goto_0

    :pswitch_0
    const-string v0, "Err_No_HKey"

    goto :goto_0

    :cond_1
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Close:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/HejuInstance;->a(I)V

    const-string v0, "heju"

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const-string v0, "heju"

    goto :goto_0

    :pswitch_1
    const-string v0, "Err_No_NetWayNum"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lorg/hj201606/lib/HejuInstance;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/hj201606/lib/HejuInstance;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/hj201606/lib/HejuInstance;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step6"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "extraInfo"

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackMessage__________"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lorg/hj201606/lib/HejuInstance;->mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

    invoke-interface {v1, v0}, Lorg/hj201606/lib/HejuHuafeiCallback;->onFail(Lorg/json/JSONObject;)V

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->debug:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lorg/hj201606/lib/HejuInstance;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/hj201606/lib/HejuInstance;->a(I)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appName"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->appName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "productName"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->productName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mobile"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->mobile:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apiKey"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "hKey"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tradeId"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->tradeId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "point"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->point:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "extraInfo"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->extraInfo:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "Model"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "op"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "OP"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "did"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "Did"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "os"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "OS"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "net"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "net"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "net2"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "net2"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vcode"

    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->vcode:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "iccid"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "iccid"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "packageName"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "brand"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "brand"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "manufacture"

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "manufacture"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "MCC"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lorg/hj201606/lib/HejuInstance;->MCC:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "MNC"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lorg/hj201606/lib/HejuInstance;->MNC:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "LAC"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lorg/hj201606/lib/HejuInstance;->LAC:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "CID"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lorg/hj201606/lib/HejuInstance;->CID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "activityName"

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->activityName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->requestNetWayNumUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    sget v4, Lorg/hj201606/lib/sms/HuafeiConfigs;->httpGetTimeOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    sget v4, Lorg/hj201606/lib/sms/HuafeiConfigs;->httpGetTimeOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/HejuInstance;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Close:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/HejuInstance;->a(I)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lorg/hj201606/lib/HejuInstance;)V
    .locals 0

    invoke-direct {p0}, Lorg/hj201606/lib/HejuInstance;->a()V

    return-void
.end method

.method static synthetic b(Lorg/hj201606/lib/HejuInstance;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/HejuInstance;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lorg/hj201606/lib/HejuInstance;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lorg/hj201606/lib/HejuInstance;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/hj201606/lib/HejuInstance;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pay(Landroid/content/Context;Ljava/util/HashMap;Lorg/hj201606/lib/HejuHuafeiCallback;)V
    .locals 6

    :try_start_0
    iput-object p1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    const-class v2, Lorg/hj201606/lib/sms/HuafeiService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HuafeiService_________________start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v3, Lorg/hj201606/lib/HejuInstance;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/hj201606/lib/HejuInstance;->mReceiverTag:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "huafeiReceiver_________________register"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SENT_SMS_ACTION_HEJU"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->sentIntent:Lorg/hj201606/lib/sms/SentIntent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sentIntent_________________register"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->appName:Ljava/lang/String;

    const-string v0, "productName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->productName:Ljava/lang/String;

    const-string v0, "point"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->point:Ljava/lang/String;

    const-string v0, "extraInfo"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->extraInfo:Ljava/lang/String;

    const-string v0, "debug"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->debug:Ljava/lang/String;

    const-string v0, "activityName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->activityName:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appName_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productName_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "point_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->point:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extraInfo_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "debug_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activityName_________________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->b:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageName__________"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-object p3, Lorg/hj201606/lib/HejuInstance;->mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->hKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/hj201606/lib/sms/HuafeiConfigs;->readPhoneStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "hKey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->hKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->tradeId:Ljava/lang/String;

    sget-object v0, Lorg/hj201606/lib/HejuInit;->mobile:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/HejuInit;->mobile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->mobile:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Simcard:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/HejuInstance;->a(I)V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lorg/hj201606/lib/HejuInit;->mobile:Ljava/lang/String;

    sput-object v0, Lorg/hj201606/lib/HejuInstance;->mobile:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "hKey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v1, ""

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "hKey"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_HKey:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/HejuInstance;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/hj201606/lib/HejuInstance;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_NetWork:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/HejuInstance;->a(I)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/hj201606/lib/HejuInstance;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
