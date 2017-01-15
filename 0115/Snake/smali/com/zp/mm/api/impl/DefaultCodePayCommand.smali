.class public Lcom/zp/mm/api/impl/DefaultCodePayCommand;
.super Lcom/zp/mm/api/impl/MultiCommand;

# interfaces
.implements Lcom/zp/mm/api/CodePayCommand;


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final exData:Ljava/lang/String;

.field private final handler:Lcom/zp/mm/api/CodePayHandler;

.field private final imei:Ljava/lang/String;

.field private final imsi:Ljava/lang/String;

.field private final parameters:[Lorg/apache/http/NameValuePair;

.field private final payCode:J

.field private final session:Ljava/lang/String;

.field private final systemInfo:Lorg/json/JSONObject;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zp/mm/api/CodePayHandler;[Lorg/apache/http/NameValuePair;[Lcom/zp/mm/api/Command;)V
    .locals 1

    invoke-direct {p0, p13}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    iput-object p1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imei:Ljava/lang/String;

    iput-object p3, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imsi:Ljava/lang/String;

    iput-object p4, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->appKey:Ljava/lang/String;

    iput-wide p5, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->payCode:J

    iput-object p7, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->channelId:Ljava/lang/String;

    iput-object p8, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->exData:Ljava/lang/String;

    iput-object p9, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->systemInfo:Lorg/json/JSONObject;

    iput-object p10, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    iput-object p11, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->handler:Lcom/zp/mm/api/CodePayHandler;

    iput-object p12, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->parameters:[Lorg/apache/http/NameValuePair;

    return-void
.end method


# virtual methods
.method public requestPay(Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    iget-object v1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->handler:Lcom/zp/mm/api/CodePayHandler;

    iget-object v2, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imei:Ljava/lang/String;

    iget-object v4, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->imsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->appKey:Ljava/lang/String;

    iget-wide v6, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->payCode:J

    iget-object v8, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->channelId:Ljava/lang/String;

    iget-object v9, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->exData:Ljava/lang/String;

    iget-object v10, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->systemInfo:Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    iget-object v13, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->parameters:[Lorg/apache/http/NameValuePair;

    move-object v11, p1

    invoke-interface/range {v1 .. v13}, Lcom/zp/mm/api/CodePayHandler;->requestCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultCodePayCommand [session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zp/mm/api/impl/DefaultCodePayCommand;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
