.class public Lorg/hj201606/lib/PayActivity;
.super Landroid/app/Activity;


# static fields
.field private static d:Landroid/content/SharedPreferences;

.field public static sendType:Ljava/lang/String;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

.field private final c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/hj201606/lib/PayActivity;->sendType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "heju"

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->e:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->f:Ljava/lang/String;

    new-instance v0, Lorg/hj201606/lib/d;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/d;-><init>(Lorg/hj201606/lib/PayActivity;)V

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lorg/hj201606/lib/PayActivity;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lorg/hj201606/lib/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-virtual {v0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->dismiss()V

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
    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    if-ne p1, v1, :cond_1

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

    invoke-interface {v1, v0}, Lorg/hj201606/lib/HejuHuafeiCallback;->onSuccess(Lorg/json/JSONObject;)V

    :goto_1
    sget-object v0, Lorg/hj201606/lib/HejuInstance;->debug:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lorg/hj201606/lib/PayActivity;->finish()V

    return-void

    :cond_1
    sget-object v1, Lorg/hj201606/lib/HejuInstance;->mHejuHuafeiCallback:Lorg/hj201606/lib/HejuHuafeiCallback;

    invoke-interface {v1, v0}, Lorg/hj201606/lib/HejuHuafeiCallback;->onFail(Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->toastContent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u8d44\u8d39"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/hj201606/lib/HejuInstance;->point:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143\uff0c\u662f\u5426\u786e\u8ba4\u652f\u4ed8\uff1f\u5ba2\u670d\u7535\u8bdd400-088-4520\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lorg/hj201606/lib/i;

    invoke-direct {v2, p0, p1}, Lorg/hj201606/lib/i;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lorg/hj201606/lib/j;

    invoke-direct {v2, p0}, Lorg/hj201606/lib/j;-><init>(Lorg/hj201606/lib/PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;I)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lorg/hj201606/lib/PayActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/hj201606/lib/PayActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lorg/hj201606/lib/PayActivity;Lorg/apache/http/HttpResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/hj201606/lib/PayActivity;->a(Lorg/apache/http/HttpResponse;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_0

    neg-int v4, v2

    if-lt v1, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step8"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->progressDialogTimeOut:I

    int-to-long v0, v0

    new-instance v2, Lorg/hj201606/lib/e;

    invoke-direct {v2, p0}, Lorg/hj201606/lib/e;-><init>(Lorg/hj201606/lib/PayActivity;)V

    invoke-static {p0, v0, v1, v2}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->createProgressDialog(Landroid/content/Context;JLorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    check-cast v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->toastProgressDialog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-virtual {v0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->show()V

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/hj201606/lib/HejuInstance;->toast:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sms"

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "verifycode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/hj201606/lib/HejuInstance;->toast:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->e()V

    goto :goto_0

    :cond_3
    const-string v0, "verifycode"

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "ydqlw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "ydrlw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->payType:Ljava/lang/String;

    const-string v1, "migu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lorg/hj201606/lib/HejuInstance;->toast:I

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->f()V

    goto :goto_0

    :cond_5
    const-string v0, "migu"

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step9"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "\u65e0\u6548\u7684\u91cd\u590d\u8bf7\u6c42\uff0c\u8bf7\u7a0d\u540e\u518d\u5c1d\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0, v4}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/hj201606/lib/PayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/hj201606/lib/sms/HuafeiInitObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p0}, Lorg/hj201606/lib/sms/HuafeiInitObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/hj201606/lib/PayActivity$SubmitThread;

    invoke-direct {v1, p0}, Lorg/hj201606/lib/PayActivity$SubmitThread;-><init>(Lorg/hj201606/lib/PayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    new-instance v0, Lorg/hj201606/lib/f;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/f;-><init>(Lorg/hj201606/lib/PayActivity;)V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiCallbackListener;->onCallback:Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "sendedNum"

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->c()V

    return-void
.end method

.method private d()V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v1, "\\|\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v7

    :goto_0
    sget v0, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    if-lt v6, v0, :cond_0

    return-void

    :cond_0
    aget-object v0, v8, v6

    const-string v1, "divis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    aget-object v5, v1, v0

    const/16 v0, 0x9

    aget-object v4, v1, v0

    new-instance v0, Lorg/hj201606/lib/PayActivity$SendSMS;

    aget-object v2, v1, v7

    const/4 v3, 0x1

    aget-object v3, v1, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/hj201606/lib/PayActivity$SendSMS;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$SendSMS;->run()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method static synthetic d(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    const-string v0, "\u65e0\u6548\u7684\u91cd\u590d\u8bf7\u6c42\uff0c\u8bf7\u7a0d\u540e\u518d\u5c1d\u8bd5"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0, v5}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/hj201606/lib/PayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p0}, Lorg/hj201606/lib/sms/HuafeiVerifyCodeObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/hj201606/lib/PayActivity$SubmitThread;

    invoke-direct {v2, p0}, Lorg/hj201606/lib/PayActivity$SubmitThread;-><init>(Lorg/hj201606/lib/PayActivity;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, "divis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    const-string v3, "\\&\\&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v5

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_2

    const/4 v0, 0x2

    aget-object v0, v4, v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    new-instance v0, Lorg/hj201606/lib/g;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/g;-><init>(Lorg/hj201606/lib/PayActivity;)V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiCallbackListener;->onCallback:Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "sendedNum"

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lorg/hj201606/lib/HejuInstance;->sentNum:I

    if-ge v0, v1, :cond_0

    aget-object v5, v2, v7

    new-instance v0, Lorg/hj201606/lib/PayActivity$SendSMS;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v3, v4, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/hj201606/lib/PayActivity$SendSMS;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$SendSMS;->run()V

    goto/16 :goto_0

    :cond_2
    aget-object v5, v3, v0

    const-string v6, ""

    if-eq v5, v6, :cond_3

    aget-object v5, v3, v0

    if-eqz v5, :cond_3

    new-instance v5, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v5, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "verifycodeEnd_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(I)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0}, Lorg/hj201606/lib/utils/HuafeiUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "\u65e0\u6548\u7684\u91cd\u590d\u8bf7\u6c42\uff0c\u8bf7\u7a0d\u540e\u518d\u5c1d\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    invoke-static {v0, v4}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/hj201606/lib/PayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/hj201606/lib/sms/HuafeiInitObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p0}, Lorg/hj201606/lib/sms/HuafeiInitObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/hj201606/lib/PayActivity$SubmitThread;

    invoke-direct {v1, p0}, Lorg/hj201606/lib/PayActivity$SubmitThread;-><init>(Lorg/hj201606/lib/PayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v0, Lorg/hj201606/lib/HejuInstance;->sentParamsStr:Ljava/lang/String;

    const-string v1, "\\|\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "divis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->e:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->f:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "\\&\\&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->g:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->h:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->i:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->j:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->k:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->l:Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->m:Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->n:Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->p:Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->q:Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->r:Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->s:Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->u:Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->v:Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/hj201606/lib/PayActivity;->w:Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/hj201606/lib/PayActivity;->x:Ljava/lang/String;

    new-instance v0, Lorg/hj201606/lib/h;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/h;-><init>(Lorg/hj201606/lib/PayActivity;)V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiCallbackListener;->onCallback:Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->g:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/hj201606/lib/PayActivity$SendSMS;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lorg/hj201606/lib/PayActivity;->h:Ljava/lang/String;

    iget-object v4, p0, Lorg/hj201606/lib/PayActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lorg/hj201606/lib/PayActivity;->f:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/hj201606/lib/PayActivity$SendSMS;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$SendSMS;->run()V

    :cond_1
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->j:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_2
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->k:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->l:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/hj201606/lib/PayActivity$SendSMS;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->k:Ljava/lang/String;

    iget-object v3, p0, Lorg/hj201606/lib/PayActivity;->l:Ljava/lang/String;

    iget-object v4, p0, Lorg/hj201606/lib/PayActivity;->m:Ljava/lang/String;

    iget-object v5, p0, Lorg/hj201606/lib/PayActivity;->f:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/hj201606/lib/PayActivity$SendSMS;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$SendSMS;->run()V

    :cond_3
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->n:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_4
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->p:Ljava/lang/String;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->r:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->r:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->s:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->s:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_6
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->u:Ljava/lang/String;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->w:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->v:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->x:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->x:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    :cond_8
    sget v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    invoke-direct {p0, v0}, Lorg/hj201606/lib/PayActivity;->a(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->p:Ljava/lang/String;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyPostThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lorg/hj201606/lib/PayActivity;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/hj201606/lib/PayActivity$MyPostThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyPostThread;->start()V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lorg/hj201606/lib/PayActivity$MyGetThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->v:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lorg/hj201606/lib/PayActivity$MyGetThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyGetThread;->start()V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lorg/hj201606/lib/PayActivity;->u:Ljava/lang/String;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/hj201606/lib/PayActivity$MyPostThread;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lorg/hj201606/lib/PayActivity;->w:Ljava/lang/String;

    iget-object v3, p0, Lorg/hj201606/lib/PayActivity;->v:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/hj201606/lib/PayActivity$MyPostThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$MyPostThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step7"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/hj201606/lib/PayActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/hj201606/lib/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiMResource;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiMResource;-><init>(Landroid/content/Context;)V

    const-string v0, "heju"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/hj201606/lib/PayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/hj201606/lib/PayActivity;->d:Landroid/content/SharedPreferences;

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "sendedNum"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiUtil;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/HuafeiUtil;-><init>(Landroid/content/Context;)V

    const-string v0, "payVerify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/hj201606/lib/utils/HuafeiUtil;->saveInt(Ljava/lang/String;I)V

    sget-object v0, Lorg/hj201606/lib/PayActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "srsn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lorg/hj201606/lib/PayActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0, p1}, Lorg/hj201606/lib/PayActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
