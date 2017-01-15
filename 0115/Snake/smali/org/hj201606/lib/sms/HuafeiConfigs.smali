.class public Lorg/hj201606/lib/sms/HuafeiConfigs;
.super Ljava/lang/Object;


# static fields
.field public static Err_Cancel:I

.field public static Err_Close:I

.field public static Err_No_HKey:I

.field public static Err_No_NetWayNum:I

.field public static Err_No_NetWork:I

.field public static Err_No_SmsSend:I

.field public static Err_Pay_Fail:I

.field public static Err_Simcard:I

.field public static Err_Sub_Fail:I

.field public static Err_TimeOut:I

.field public static SMS_STATUS:Z

.field public static Success:I

.field public static alarmTag:Z

.field public static httpGetTimeOut:I

.field public static modemUrl:Ljava/lang/String;

.field public static phoneStatus:Ljava/util/HashMap;

.field public static progressDialogTimeOut:I

.field public static requestNetWayNumUrl:Ljava/lang/String;

.field public static requestNetWayNumUrlAgain:Ljava/lang/String;

.field public static sendSmsTag:Z

.field public static showToast:Z

.field public static submitUrl:Ljava/lang/String;

.field public static vcode:Ljava/lang/String;

.field public static verifySendUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x4e20

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v0, "http://smsapi.hejupay.com/getFail.php"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->requestNetWayNumUrlAgain:Ljava/lang/String;

    const-string v0, "http://smsapi.hejupay.com/getSP135.php"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->requestNetWayNumUrl:Ljava/lang/String;

    const-string v0, "http://smsapi.hejupay.com/getSubmit.php"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->submitUrl:Ljava/lang/String;

    const-string v0, "http://smsapi.hejupay.com/getSmsSend.php"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->verifySendUrl:Ljava/lang/String;

    const-string v0, "http://modem.hejupay.com/get.php"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->modemUrl:Ljava/lang/String;

    sput v2, Lorg/hj201606/lib/sms/HuafeiConfigs;->httpGetTimeOut:I

    sput v2, Lorg/hj201606/lib/sms/HuafeiConfigs;->progressDialogTimeOut:I

    sput-boolean v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->showToast:Z

    sput-boolean v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->sendSmsTag:Z

    const-string v0, "1.3.8"

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->vcode:Ljava/lang/String;

    sput-boolean v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->alarmTag:Z

    const/16 v0, 0x64

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    const/16 v0, 0x65

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_TimeOut:I

    const/16 v0, 0x66

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_NetWayNum:I

    const/16 v0, 0x67

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_HKey:I

    const/16 v0, 0x68

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_NetWork:I

    const/16 v0, 0x69

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Simcard:I

    const/16 v0, 0x6a

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_SmsSend:I

    const/16 v0, 0x6b

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Close:I

    const/16 v0, 0x6d

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Cancel:I

    const/16 v0, 0x6e

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Sub_Fail:I

    const/16 v0, 0x6c

    sput v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    sput-boolean v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    move v0, v2

    goto :goto_0

    :pswitch_9
    move v0, v2

    goto :goto_0

    :pswitch_a
    move v0, v2

    goto :goto_0

    :pswitch_b
    move v0, v2

    goto :goto_0

    :pswitch_c
    move v0, v2

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v2

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public static getNetWork(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetWorkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "WIFI"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/hj201606/lib/sms/HuafeiConfigs;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3G"

    goto :goto_0

    :cond_1
    const-string v0, "2G"

    goto :goto_0

    :cond_2
    const-string v0, "WAP"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readPhoneStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-string v2, ""

    const-string v1, ""

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "phoneNumber"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string v2, "1"

    :cond_2
    :goto_0
    :try_start_1
    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "IMSI"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "OP"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v3, "SimState"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v3, "IMEI"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v4, "Did"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "iccid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "packageName"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "versionCode"

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "versionName"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "OS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "manufacture"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "net"

    invoke-static {p0}, Lorg/hj201606/lib/sms/HuafeiConfigs;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "net2"

    invoke-static {p0}, Lorg/hj201606/lib/sms/HuafeiConfigs;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "hKey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v1, "ip"

    invoke-static {}, Lorg/hj201606/lib/sms/HuafeiConfigs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    return-object v0

    :cond_3
    :try_start_2
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "2"

    goto/16 :goto_0

    :cond_5
    :try_start_3
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "46005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "46011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    const-string v2, "3"

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v2, "hKey"

    const-string v3, "hKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_8
    const-string v2, "1"

    goto/16 :goto_0
.end method
