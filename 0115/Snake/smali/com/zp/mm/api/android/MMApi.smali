.class public Lcom/zp/mm/api/android/MMApi;
.super Ljava/lang/Object;


# static fields
.field private static final GATE:Ljava/lang/String; = "http://120.25.132.133"

.field private static connector:Lcom/zp/mm/api/ServerConnector;

.field private static isDebug:Z

.field private static packageInfoCache:Landroid/content/pm/PackageInfo;

.field private static packagesCache:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zp/mm/api/impl/XmlServerConnector;

    const-string v1, "http://120.25.132.133"

    invoke-direct {v0, v1}, Lcom/zp/mm/api/impl/XmlServerConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appStart(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/zp/mm/api/android/MMApi;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/zp/mm/api/android/MMApi;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_7

    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getDeviceId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    if-nez p4, :cond_6

    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getSubscriberId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    const/4 v2, 0x1

    invoke-static {p0, v1, v5, v4, v2}, Lcom/zp/mm/api/android/MMApi;->createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/zp/mm/api/ServerConnector;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/zp/mm/api/Command;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/zp/mm/api/Command;->executeCommand()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-void

    :cond_6
    move-object v4, p4

    goto :goto_1

    :cond_7
    move-object v5, p3

    goto :goto_0
.end method

.method public static varargs createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p6, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getDeviceId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p7, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getSubscriberId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    :try_start_0
    sget-object v1, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v4, v2}, Lcom/zp/mm/api/android/MMApi;->createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p8

    invoke-interface/range {v1 .. v11}, Lcom/zp/mm/api/ServerConnector;->createCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePayCommand;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object/from16 v4, p7

    goto :goto_1

    :cond_6
    move-object/from16 v3, p6

    goto :goto_0
.end method

.method public static varargs createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/zp/mm/api/android/MMApi;->createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;

    move-result-object v0

    return-object v0
.end method

.method private static createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_4

    move-object v2, v3

    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    :goto_1
    sput-object v1, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    :goto_2
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_6

    move-object v1, v3

    :goto_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "imei"

    invoke-static {v6, v5, p2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "imsi"

    invoke-static {v6, v5, p3}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "brand"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "manufacturer"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "release"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "sdk"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "fingerprint"

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "board"

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    const-string v5, "serial"

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getSerial()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    :goto_4
    const-string v5, "display"

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "id"

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_2
    const-string v5, "radio"

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getRadioVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :goto_5
    const-string v5, "host"

    sget-object v7, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bootloader"

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "cpuAbi"

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "cpuAbi2"

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "device"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "hardware"

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "product"

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "tags"

    sget-object v7, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "time"

    sget-wide v8, Landroid/os/Build;->TIME:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "type"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "user"

    sget-object v7, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "codename"

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "incremental"

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "unknown"

    const-string v7, "unknown"

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/meminfo"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    const-string v7, "meminfo"

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_6
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    :try_start_6
    const-string v7, "cpuinfo"

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    :goto_7
    const-string v5, "networkOperatorName"

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    const-string v5, "macAddress"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "ssid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bssid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    const-string v5, "ipAddress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v8, v2, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v5, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "activeNetInfo"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "height"

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "width"

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "density"

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_7
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "name"

    invoke-static {v8, v9, v4}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "packageName"

    invoke-static {v8, v4, v5}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "versionName"

    invoke-static {v8, v4, v7}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "versionCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    :try_start_8
    sget-object v1, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto/16 :goto_3

    :catch_2
    move-exception v5

    move-object v5, v3

    :goto_9
    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v5

    :goto_a
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_3
    move-exception v5

    move-object v5, v3

    :goto_b
    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v5

    :goto_c
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    const-string v0, "installed"

    invoke-static {v6, v0, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v1, "userAgent"

    invoke-static {v6, v1, v0}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_9
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_d
    sput-object v0, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;

    const-string v1, "name"

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "versionName"

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "versionCode"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c

    :goto_e
    if-eqz p4, :cond_a

    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :try_start_b
    const-string v1, "kernel"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_f
    :try_start_c
    const-string v0, "properties"

    const-string v1, "getprop"

    invoke-static {v1}, Lcom/zp/mm/api/android/MMApi;->execShCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_e

    :goto_10
    :try_start_d
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/iSerial"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    const-string v1, "iSerial"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_11
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/idProduct"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    const-string v1, "idProduct"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_12
    :try_start_11
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/idVendor"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    const-string v1, "idVendor"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    move-object v0, v6

    :goto_13
    return-object v0

    :cond_b
    :try_start_13
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v0, v3

    :goto_14
    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_f

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_15
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_5
    move-exception v0

    move-object v0, v3

    :goto_16
    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_11

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_17
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_6
    move-exception v0

    move-object v0, v3

    :goto_18
    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_19
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_7
    move-exception v1

    move-object v3, v0

    :goto_1a
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v6

    goto :goto_13

    :catchall_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1b
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_8
    move-exception v5

    goto/16 :goto_4

    :catch_9
    move-exception v5

    goto/16 :goto_5

    :catch_a
    move-exception v7

    goto/16 :goto_9

    :catch_b
    move-exception v7

    goto/16 :goto_b

    :catch_c
    move-exception v0

    goto/16 :goto_e

    :catch_d
    move-exception v1

    goto :goto_14

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :catch_f
    move-exception v1

    goto :goto_16

    :catch_10
    move-exception v1

    goto :goto_18

    :catchall_6
    move-exception v0

    goto :goto_1b

    :catch_11
    move-exception v0

    goto :goto_1a

    :catchall_7
    move-exception v0

    goto :goto_19

    :catchall_8
    move-exception v0

    goto :goto_17

    :catchall_9
    move-exception v0

    goto :goto_15

    :catchall_a
    move-exception v0

    goto/16 :goto_c

    :catchall_b
    move-exception v0

    goto/16 :goto_a
.end method

.method private static exeShCmd(ZLjava/lang/String;J)Ljava/lang/String;
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    const-string v0, "su"

    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v0, "echo rg_cmd_start_magic\n"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "echo rg_cmd_end_magic\n"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v5, ""

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v12, v0

    move-object v0, v5

    move v5, v4

    move v4, v12

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v10, v8, p2

    cmp-long v6, v6, v10

    if-gez v6, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, "permission denied"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x1

    :cond_2
    :goto_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    :cond_3
    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    const-string v0, "sh"

    goto/16 :goto_0

    :cond_6
    if-nez v4, :cond_7

    const/4 v4, 0x1

    :try_start_5
    const-string v7, "rg_cmd_start_magic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_7
    const-string v7, "rg_cmd_end_magic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_9

    move-object v0, v6

    goto :goto_1

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "execCmd exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", isSuExec: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", cmd: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v0

    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    :catchall_0
    move-exception v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_5
    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_a
    throw v3

    :catchall_1
    move-exception v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_5

    :catchall_2
    move-exception v1

    const/4 v0, 0x0

    move-object v12, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v12

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method private static execShCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, p0, v2, v3}, Lcom/zp/mm/api/android/MMApi;->exeShCmd(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Dalvik/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Linux; U; Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, " Build/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "1.0"

    goto :goto_0
.end method

.method private static getRadioVersion()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSerial()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "serial_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zp/mm/api/android/MMApi;->getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p6, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getDeviceId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p7, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getSubscriberId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v1, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v1 .. v11}, Lcom/zp/mm/api/ServerConnector;->getSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSCommand;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/zp/mm/api/SMSCommand;->executeCommand()V

    :cond_5
    return-object v0

    :cond_6
    move-object/from16 v4, p7

    goto :goto_1

    :cond_7
    move-object/from16 v3, p6

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/zp/mm/api/android/MMApi;->isDebug:Z

    return v0
.end method

.method private static putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static setDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zp/mm/api/android/MMApi;->isDebug:Z

    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->destroy()V

    :cond_0
    new-instance v0, Lcom/zp/mm/api/impl/XmlServerConnector;

    invoke-direct {v0, p0}, Lcom/zp/mm/api/impl/XmlServerConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->initialize()V

    return-void
.end method
