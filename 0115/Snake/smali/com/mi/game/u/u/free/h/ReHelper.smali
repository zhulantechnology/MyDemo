.class public Lcom/mi/game/u/u/free/h/ReHelper;
.super Ljava/lang/Object;
.source "ReHelper.java"


# static fields
.field public static APP_ID_KEY:Ljava/lang/String;

.field public static CHANNEL_ID_KEY:Ljava/lang/String;

.field public static CUSTOMER_ID_KEY:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static appIdKeyBytes:[B

.field private static channelId:Ljava/lang/String;

.field private static channelIdKeyBytes:[B

.field private static customer:Ljava/lang/String;

.field private static customerKeyBytes:[B

.field private static libFile:Ljava/lang/String;

.field private static libFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const-string v0, "/assets/1E7CC/"

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->libFolder:Ljava/lang/String;

    .line 7
    const-string v0, "C27E2"

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->libFile:Ljava/lang/String;

    .line 9
    const-string v0, "ezBDN0M5REJFLUY3RkU5NjMyfQ=="

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->appId:Ljava/lang/String;

    .line 10
    const-string v0, "WUpfMTQ2OV9aRlRDMQ=="

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->channelId:Ljava/lang/String;

    .line 11
    const-string v0, "U05PV0ZJU0g="

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->customer:Ljava/lang/String;

    .line 14
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->appIdKeyBytes:[B

    .line 16
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->channelIdKeyBytes:[B

    .line 18
    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->customerKeyBytes:[B

    .line 20
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->appIdKeyBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->APP_ID_KEY:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->channelIdKeyBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->CHANNEL_ID_KEY:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->customerKeyBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->CUSTOMER_ID_KEY:Ljava/lang/String;

    return-void

    .line 14
    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x6et
        0x6ft
        0x77t
        0x66t
        0x69t
        0x73t
        0x68t
        0x2et
        0x61t
        0x70t
        0x70t
        0x69t
        0x64t
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x6et
        0x6ft
        0x77t
        0x66t
        0x69t
        0x73t
        0x68t
        0x2et
        0x63t
        0x68t
        0x61t
        0x6et
        0x6et
        0x65t
        0x6ct
    .end array-data

    .line 18
    :array_2
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x73t
        0x6et
        0x6ft
        0x77t
        0x66t
        0x69t
        0x73t
        0x68t
        0x2et
        0x63t
        0x75t
        0x73t
        0x74t
        0x6ft
        0x6dt
        0x65t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->appId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 36
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    :try_start_0
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->channelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->channelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->channelId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 48
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->customer:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->customer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/mi/game/u/u/free/h/ReHelper;->customer:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 60
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->libFile:Ljava/lang/String;

    return-object v0
.end method

.method public static getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->libFolder:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetaConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->APP_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/mi/game/u/u/free/h/ReHelper;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->CHANNEL_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/mi/game/u/u/free/h/ReHelper;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/mi/game/u/u/free/h/ReHelper;->CUSTOMER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lcom/mi/game/u/u/free/h/ReHelper;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
